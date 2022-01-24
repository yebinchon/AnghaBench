#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32_t ;
typedef  scalar_t__ u16_t ;
typedef  scalar_t__ spiffs_obj_id ;
typedef  scalar_t__ spiffs_block_ix ;
struct TYPE_10__ {int /*<<< orphan*/  stats_p_deleted; scalar_t__ lu_work; int /*<<< orphan*/  stats_gc_runs; scalar_t__ block_count; } ;
typedef  TYPE_1__ spiffs ;
typedef  int s32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int SPIFFS_ERR_NO_DELETED_BLOCKS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ SPIFFS_OBJ_ID_DELETED ; 
 scalar_t__ SPIFFS_OBJ_ID_FREE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int SPIFFS_OK ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_LU ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int FUNC7 (TYPE_1__*,scalar_t__) ; 

s32_t FUNC8(
    spiffs *fs, u16_t max_free_pages) {
  s32_t res = SPIFFS_OK;
  u32_t blocks = fs->block_count;
  spiffs_block_ix cur_block = 0;
  u32_t cur_block_addr = 0;
  int cur_entry = 0;
  spiffs_obj_id *obj_lu_buf = (spiffs_obj_id *)fs->lu_work;

  FUNC2("gc_quick: running\n");
#if SPIFFS_GC_STATS
  fs->stats_gc_runs++;
#endif

  int entries_per_page = (FUNC1(fs) / sizeof(spiffs_obj_id));

  // find fully deleted blocks
  // check each block
  while (res == SPIFFS_OK && blocks--) {
    u16_t deleted_pages_in_block = 0;
    u16_t free_pages_in_block = 0;

    int obj_lookup_page = 0;
    // check each object lookup page
    while (res == SPIFFS_OK && obj_lookup_page < (int)FUNC3(fs)) {
      int entry_offset = obj_lookup_page * entries_per_page;
      res = FUNC6(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_READ,
          0, cur_block_addr + FUNC5(fs, obj_lookup_page), FUNC1(fs), fs->lu_work);
      // check each entry
      while (res == SPIFFS_OK &&
          cur_entry - entry_offset < entries_per_page &&
          cur_entry < (int)(FUNC4(fs)-FUNC3(fs))) {
        spiffs_obj_id obj_id = obj_lu_buf[cur_entry-entry_offset];
        if (obj_id == SPIFFS_OBJ_ID_DELETED) {
          deleted_pages_in_block++;
        } else if (obj_id == SPIFFS_OBJ_ID_FREE) {
          // kill scan, go for next block
          free_pages_in_block++;
          if (free_pages_in_block > max_free_pages) {
            obj_lookup_page = FUNC3(fs);
            res = 1; // kill object lu loop
            break;
          }
        }  else {
          // kill scan, go for next block
          obj_lookup_page = FUNC3(fs);
          res = 1; // kill object lu loop
          break;
        }
        cur_entry++;
      } // per entry
      obj_lookup_page++;
    } // per object lookup page
    if (res == 1) res = SPIFFS_OK;

    if (res == SPIFFS_OK &&
        deleted_pages_in_block + free_pages_in_block == FUNC4(fs)-FUNC3(fs) &&
        free_pages_in_block <= max_free_pages) {
      // found a fully deleted block
      fs->stats_p_deleted -= deleted_pages_in_block;
      res = FUNC7(fs, cur_block);
      return res;
    }

    cur_entry = 0;
    cur_block++;
    cur_block_addr += FUNC0(fs);
  } // per block

  if (res == SPIFFS_OK) {
    res = SPIFFS_ERR_NO_DELETED_BLOCKS;
  }
  return res;
}