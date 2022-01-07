
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int spiffs_block_ix ;
struct TYPE_5__ {int free_blocks; int free_cursor_obj_lu_entry; int free_cursor_block_ix; int cleaning; } ;
typedef TYPE_1__ spiffs ;
typedef scalar_t__ s32_t ;


 int SPIFFS_CHECK_RES (scalar_t__) ;
 int SPIFFS_DBG (char*) ;
 scalar_t__ SPIFFS_ERR_FULL ;
 scalar_t__ SPIFFS_ERR_NO_DELETED_BLOCKS ;
 int SPIFFS_OBJ_ID_FREE ;
 scalar_t__ SPIFFS_OK ;
 scalar_t__ spiffs_gc_quick (TYPE_1__*,int ) ;
 scalar_t__ spiffs_obj_lu_find_id (TYPE_1__*,int ,int,int ,int *,int*) ;

s32_t spiffs_obj_lu_find_free(
    spiffs *fs,
    spiffs_block_ix starting_block,
    int starting_lu_entry,
    spiffs_block_ix *block_ix,
    int *lu_entry) {
  s32_t res;
  if (!fs->cleaning && fs->free_blocks < 2) {
    res = spiffs_gc_quick(fs, 0);
    if (res == SPIFFS_ERR_NO_DELETED_BLOCKS) {
      res = SPIFFS_OK;
    }
    SPIFFS_CHECK_RES(res);
    if (fs->free_blocks < 2) {
      return SPIFFS_ERR_FULL;
    }
  }
  res = spiffs_obj_lu_find_id(fs, starting_block, starting_lu_entry,
      SPIFFS_OBJ_ID_FREE, block_ix, lu_entry);
  if (res == SPIFFS_OK) {
    fs->free_cursor_block_ix = *block_ix;
    fs->free_cursor_obj_lu_entry = (*lu_entry) + 1;
    if (*lu_entry == 0) {
      fs->free_blocks--;
    }
  }
  if (res == SPIFFS_ERR_FULL) {
    SPIFFS_DBG("fs full\n");
  }

  return res;
}
