
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ spiffs_span_ix ;
typedef int spiffs_page_object_ix_header ;
typedef int spiffs_page_object_ix ;
typedef int spiffs_page_ix ;
struct TYPE_16__ {scalar_t__ span_ix; int flags; int obj_id; } ;
typedef TYPE_1__ spiffs_page_header ;
typedef int spiffs_obj_id ;
typedef int spiffs_block_ix ;
struct TYPE_17__ {int * lu_work; int free_cursor_obj_lu_entry; int free_cursor_block_ix; } ;
typedef TYPE_2__ spiffs ;
typedef int s32_t ;


 int SPIFFS_BLOCK_FOR_PAGE (TYPE_2__*,int ) ;
 scalar_t__ SPIFFS_BLOCK_TO_PADDR (TYPE_2__*,int ) ;
 int SPIFFS_CFG_LOG_PAGE_SZ (TYPE_2__*) ;
 int SPIFFS_CHECK_RES (int ) ;
 int SPIFFS_ERR_CHECK_FLAGS_BAD ;
 int SPIFFS_ERR_CHECK_OBJ_ID_MISM ;
 int SPIFFS_ERR_CHECK_SPIX_MISM ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 size_t SPIFFS_OBJ_IX_ENTRY (TYPE_2__*,scalar_t__) ;
 scalar_t__ SPIFFS_OBJ_IX_ENTRY_SPAN_IX (TYPE_2__*,scalar_t__) ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE (TYPE_2__*,int ) ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX (TYPE_2__*,int ,int) ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_C_UPDT ;
 int SPIFFS_OP_T_OBJ_DA ;
 int SPIFFS_OP_T_OBJ_LU ;
 int SPIFFS_OP_T_OBJ_LU2 ;
 scalar_t__ SPIFFS_PAGE_TO_PADDR (TYPE_2__*,int ) ;
 int SPIFFS_PH_FLAG_DELET ;
 int SPIFFS_PH_FLAG_FINAL ;
 int SPIFFS_PH_FLAG_INDEX ;
 int SPIFFS_PH_FLAG_IXDELE ;
 int SPIFFS_PH_FLAG_USED ;
 int _spiffs_rd (TYPE_2__*,int,int ,scalar_t__,int,int *) ;
 int _spiffs_wr (TYPE_2__*,int,int ,scalar_t__,int,int *) ;
 int spiffs_obj_lu_find_free (TYPE_2__*,int ,int ,int *,int*) ;
 int spiffs_page_delete (TYPE_2__*,int ) ;

__attribute__((used)) static s32_t spiffs_rewrite_index(spiffs *fs, spiffs_obj_id obj_id, spiffs_span_ix data_spix, spiffs_page_ix new_data_pix, spiffs_page_ix objix_pix) {
  s32_t res;
  spiffs_block_ix bix;
  int entry;
  spiffs_page_ix free_pix;
  obj_id |= SPIFFS_OBJ_ID_IX_FLAG;


  res = spiffs_obj_lu_find_free(fs, fs->free_cursor_block_ix, fs->free_cursor_obj_lu_entry, &bix, &entry);
  SPIFFS_CHECK_RES(res);
  free_pix = SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(fs, bix, entry);


  spiffs_span_ix objix_spix = SPIFFS_OBJ_IX_ENTRY_SPAN_IX(fs, data_spix);
  if (objix_spix == 0) {

    entry = data_spix;
  } else {

    entry = SPIFFS_OBJ_IX_ENTRY(fs, data_spix);

  }

  res = _spiffs_rd(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
      0, SPIFFS_PAGE_TO_PADDR(fs, objix_pix), SPIFFS_CFG_LOG_PAGE_SZ(fs), fs->lu_work);
  SPIFFS_CHECK_RES(res);
  spiffs_page_header *objix_p_hdr = (spiffs_page_header *)fs->lu_work;


  if (objix_p_hdr->obj_id != obj_id) {
    spiffs_page_delete(fs, free_pix);
    return SPIFFS_ERR_CHECK_OBJ_ID_MISM;
  }
  if (objix_p_hdr->span_ix != objix_spix) {
    spiffs_page_delete(fs, free_pix);
    return SPIFFS_ERR_CHECK_SPIX_MISM;
  }
  if ((objix_p_hdr->flags & (SPIFFS_PH_FLAG_USED | SPIFFS_PH_FLAG_IXDELE | SPIFFS_PH_FLAG_INDEX |
                            SPIFFS_PH_FLAG_FINAL | SPIFFS_PH_FLAG_DELET)) !=
                                (SPIFFS_PH_FLAG_IXDELE | SPIFFS_PH_FLAG_DELET)) {
    spiffs_page_delete(fs, free_pix);
    return SPIFFS_ERR_CHECK_FLAGS_BAD;
  }


  if (objix_spix == 0) {
    ((spiffs_page_ix*)((u8_t *)fs->lu_work + sizeof(spiffs_page_object_ix_header)))[data_spix] = new_data_pix;
  } else {
    ((spiffs_page_ix*)((u8_t *)fs->lu_work + sizeof(spiffs_page_object_ix)))[SPIFFS_OBJ_IX_ENTRY(fs, data_spix)] = new_data_pix;
  }

  res = _spiffs_wr(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_UPDT,
      0, SPIFFS_PAGE_TO_PADDR(fs, free_pix), SPIFFS_CFG_LOG_PAGE_SZ(fs), fs->lu_work);
  SPIFFS_CHECK_RES(res);
  res = _spiffs_wr(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_UPDT,
      0, SPIFFS_BLOCK_TO_PADDR(fs, SPIFFS_BLOCK_FOR_PAGE(fs, free_pix)) + SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(fs, free_pix) * sizeof(spiffs_page_ix),
      sizeof(spiffs_obj_id),
      (u8_t *)&obj_id);
  SPIFFS_CHECK_RES(res);
  res = spiffs_page_delete(fs, objix_pix);

  return res;
}
