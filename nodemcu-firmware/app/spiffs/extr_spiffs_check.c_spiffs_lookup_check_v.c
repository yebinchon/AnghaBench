
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8_t ;
typedef int spiffs_page_ix ;
typedef int spiffs_page_header ;
typedef int spiffs_obj_id ;
typedef int spiffs_block_ix ;
struct TYPE_8__ {int block_count; } ;
typedef TYPE_1__ spiffs ;
typedef scalar_t__ s32_t ;


 int CHECK_CB (TYPE_1__*,int ,int ,int,int ) ;
 int SPIFFS_CHECK_LOOKUP ;
 int SPIFFS_CHECK_PROGRESS ;
 int SPIFFS_CHECK_RES (scalar_t__) ;
 int SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX (TYPE_1__*,int,int) ;
 scalar_t__ SPIFFS_OK ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_LU2 ;
 int SPIFFS_PAGE_TO_PADDR (TYPE_1__*,int ) ;
 scalar_t__ SPIFFS_VIS_COUNTINUE ;
 scalar_t__ SPIFFS_VIS_COUNTINUE_RELOAD ;
 scalar_t__ _spiffs_rd (TYPE_1__*,int,int ,int ,int,int *) ;
 scalar_t__ spiffs_lookup_check_validate (TYPE_1__*,int ,int *,int ,int,int,int*) ;

__attribute__((used)) static s32_t spiffs_lookup_check_v(spiffs *fs, spiffs_obj_id obj_id, spiffs_block_ix cur_block, int cur_entry,
    const void *user_const_p, void *user_var_p) {
  (void)user_const_p;
  (void)user_var_p;
  s32_t res = SPIFFS_OK;
  spiffs_page_header p_hdr;
  spiffs_page_ix cur_pix = SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(fs, cur_block, cur_entry);

  CHECK_CB(fs, SPIFFS_CHECK_LOOKUP, SPIFFS_CHECK_PROGRESS,
      (cur_block * 256)/fs->block_count, 0);


  res = _spiffs_rd(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
      0, SPIFFS_PAGE_TO_PADDR(fs, cur_pix), sizeof(spiffs_page_header), (u8_t*)&p_hdr);
  SPIFFS_CHECK_RES(res);

  int reload_lu = 0;

  res = spiffs_lookup_check_validate(fs, obj_id, &p_hdr, cur_pix, cur_block, cur_entry, &reload_lu);
  SPIFFS_CHECK_RES(res);

  if (res == SPIFFS_OK) {
    return reload_lu ? SPIFFS_VIS_COUNTINUE_RELOAD : SPIFFS_VIS_COUNTINUE;
  }
  return res;
}
