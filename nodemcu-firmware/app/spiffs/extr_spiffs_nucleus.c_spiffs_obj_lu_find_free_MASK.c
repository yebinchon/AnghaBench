#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spiffs_block_ix ;
struct TYPE_5__ {int free_blocks; int free_cursor_obj_lu_entry; int /*<<< orphan*/  free_cursor_block_ix; int /*<<< orphan*/  cleaning; } ;
typedef  TYPE_1__ spiffs ;
typedef  scalar_t__ s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ SPIFFS_ERR_FULL ; 
 scalar_t__ SPIFFS_ERR_NO_DELETED_BLOCKS ; 
 int /*<<< orphan*/  SPIFFS_OBJ_ID_FREE ; 
 scalar_t__ SPIFFS_OK ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

s32_t FUNC4(
    spiffs *fs,
    spiffs_block_ix starting_block,
    int starting_lu_entry,
    spiffs_block_ix *block_ix,
    int *lu_entry) {
  s32_t res;
  if (!fs->cleaning && fs->free_blocks < 2) {
    res = FUNC2(fs, 0);
    if (res == SPIFFS_ERR_NO_DELETED_BLOCKS) {
      res = SPIFFS_OK;
    }
    FUNC0(res);
    if (fs->free_blocks < 2) {
      return SPIFFS_ERR_FULL;
    }
  }
  res = FUNC3(fs, starting_block, starting_lu_entry,
      SPIFFS_OBJ_ID_FREE, block_ix, lu_entry);
  if (res == SPIFFS_OK) {
    fs->free_cursor_block_ix = *block_ix;
    fs->free_cursor_obj_lu_entry = (*lu_entry) + 1;
    if (*lu_entry == 0) {
      fs->free_blocks--;
    }
  }
  if (res == SPIFFS_ERR_FULL) {
    FUNC1("fs full\n");
  }

  return res;
}