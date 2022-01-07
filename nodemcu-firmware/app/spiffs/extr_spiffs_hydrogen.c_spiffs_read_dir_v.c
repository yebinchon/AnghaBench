
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct spiffs_dirent {int obj_id; scalar_t__ size; int meta; int pix; int type; scalar_t__ name; } ;
struct TYPE_3__ {scalar_t__ span_ix; int flags; } ;
struct TYPE_4__ {scalar_t__ size; int meta; int type; scalar_t__ name; TYPE_1__ p_hdr; } ;
typedef TYPE_2__ spiffs_page_object_ix_header ;
typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs_block_ix ;
typedef int spiffs ;
typedef scalar_t__ s32_t ;


 int SPIFFS_OBJ_ID_DELETED ;
 int SPIFFS_OBJ_ID_FREE ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX (int *,int ,int) ;
 int SPIFFS_OBJ_META_LEN ;
 scalar_t__ SPIFFS_OK ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_LU2 ;
 int SPIFFS_PAGE_TO_PADDR (int *,int ) ;
 int SPIFFS_PH_FLAG_DELET ;
 int SPIFFS_PH_FLAG_FINAL ;
 int SPIFFS_PH_FLAG_IXDELE ;
 scalar_t__ SPIFFS_UNDEFINED_LEN ;
 scalar_t__ SPIFFS_VIS_COUNTINUE ;
 int _SPIFFS_MEMCPY (int ,int ,int ) ;
 scalar_t__ _spiffs_rd (int *,int,int ,int ,int,int *) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static s32_t spiffs_read_dir_v(
    spiffs *fs,
    spiffs_obj_id obj_id,
    spiffs_block_ix bix,
    int ix_entry,
    const void *user_const_p,
    void *user_var_p) {
  (void)user_const_p;
  s32_t res;
  spiffs_page_object_ix_header objix_hdr;
  if (obj_id == SPIFFS_OBJ_ID_FREE || obj_id == SPIFFS_OBJ_ID_DELETED ||
      (obj_id & SPIFFS_OBJ_ID_IX_FLAG) == 0) {
    return SPIFFS_VIS_COUNTINUE;
  }

  spiffs_page_ix pix = SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(fs, bix, ix_entry);
  res = _spiffs_rd(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
      0, SPIFFS_PAGE_TO_PADDR(fs, pix), sizeof(spiffs_page_object_ix_header), (u8_t *)&objix_hdr);
  if (res != SPIFFS_OK) return res;
  if ((obj_id & SPIFFS_OBJ_ID_IX_FLAG) &&
      objix_hdr.p_hdr.span_ix == 0 &&
      (objix_hdr.p_hdr.flags & (SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_FINAL | SPIFFS_PH_FLAG_IXDELE)) ==
          (SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_IXDELE)) {
    struct spiffs_dirent *e = (struct spiffs_dirent*)user_var_p;
    e->obj_id = obj_id;
    strcpy((char *)e->name, (char *)objix_hdr.name);
    e->type = objix_hdr.type;
    e->size = objix_hdr.size == SPIFFS_UNDEFINED_LEN ? 0 : objix_hdr.size;
    e->pix = pix;



    return SPIFFS_OK;
  }
  return SPIFFS_VIS_COUNTINUE;
}
