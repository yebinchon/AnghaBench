
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u32_t ;
struct TYPE_9__ {scalar_t__ span_ix; int flags; } ;
struct TYPE_10__ {scalar_t__ name; TYPE_1__ p_hdr; } ;
typedef TYPE_2__ spiffs_page_object_ix_header ;
typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs_block_ix ;
struct TYPE_11__ {int* work; } ;
typedef TYPE_3__ spiffs ;
typedef int s32_t ;


 scalar_t__ SPIFFS_CFG_LOG_PAGE_SZ (TYPE_3__*) ;
 int SPIFFS_CHECK_RES (int) ;
 int SPIFFS_ERR_CONFLICTING_NAME ;
 int SPIFFS_OBJ_ID_DELETED ;
 int SPIFFS_OBJ_ID_FREE ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX (TYPE_3__*,int ,int) ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_LU2 ;
 int SPIFFS_PAGE_TO_PADDR (TYPE_3__*,int ) ;
 int SPIFFS_PH_FLAG_DELET ;
 int SPIFFS_PH_FLAG_FINAL ;
 int SPIFFS_PH_FLAG_IXDELE ;
 int SPIFFS_VIS_COUNTINUE ;
 int _spiffs_rd (TYPE_3__*,int,int ,int ,int,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static s32_t spiffs_obj_lu_find_free_obj_id_bitmap_v(spiffs *fs, spiffs_obj_id id, spiffs_block_ix bix, int ix_entry,
    const void *user_const_p, void *user_var_p) {
  if (id != SPIFFS_OBJ_ID_FREE && id != SPIFFS_OBJ_ID_DELETED) {
    spiffs_obj_id min_obj_id = *((spiffs_obj_id*)user_var_p);
    const u8_t *conflicting_name = (const u8_t*)user_const_p;


    if (conflicting_name && (id & SPIFFS_OBJ_ID_IX_FLAG)) {
      spiffs_page_ix pix = SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(fs, bix, ix_entry);
      int res;
      spiffs_page_object_ix_header objix_hdr;
      res = _spiffs_rd(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
          0, SPIFFS_PAGE_TO_PADDR(fs, pix), sizeof(spiffs_page_object_ix_header), (u8_t *)&objix_hdr);
      SPIFFS_CHECK_RES(res);
      if (objix_hdr.p_hdr.span_ix == 0 &&
          (objix_hdr.p_hdr.flags & (SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_FINAL | SPIFFS_PH_FLAG_IXDELE)) ==
              (SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_IXDELE)) {
        if (strcmp((const char*)user_const_p, (char*)objix_hdr.name) == 0) {
          return SPIFFS_ERR_CONFLICTING_NAME;
        }
      }
    }

    id &= ~SPIFFS_OBJ_ID_IX_FLAG;
    u32_t bit_ix = (id-min_obj_id) & 7;
    int byte_ix = (id-min_obj_id) >> 3;
    if (byte_ix >= 0 && (u32_t)byte_ix < SPIFFS_CFG_LOG_PAGE_SZ(fs)) {
      fs->work[byte_ix] |= (1<<bit_ix);
    }
  }
  return SPIFFS_VIS_COUNTINUE;
}
