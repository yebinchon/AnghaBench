
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spiffs_obj_id ;
typedef int spiffs_block_ix ;
typedef int spiffs ;
typedef scalar_t__ s32_t ;


 scalar_t__ SPIFFS_ERR_NOT_FOUND ;
 int SPIFFS_VIS_CHECK_ID ;
 scalar_t__ SPIFFS_VIS_END ;
 scalar_t__ spiffs_obj_lu_find_entry_visitor (int *,int ,int,int ,int ,int ,int ,int ,int *,int*) ;

s32_t spiffs_obj_lu_find_id(
    spiffs *fs,
    spiffs_block_ix starting_block,
    int starting_lu_entry,
    spiffs_obj_id obj_id,
    spiffs_block_ix *block_ix,
    int *lu_entry) {
  s32_t res = spiffs_obj_lu_find_entry_visitor(
      fs, starting_block, starting_lu_entry, SPIFFS_VIS_CHECK_ID, obj_id, 0, 0, 0, block_ix, lu_entry);
  if (res == SPIFFS_VIS_END) {
    res = SPIFFS_ERR_NOT_FOUND;
  }
  return res;
}
