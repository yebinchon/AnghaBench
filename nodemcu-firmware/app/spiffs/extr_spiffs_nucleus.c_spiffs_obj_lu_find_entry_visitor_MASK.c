#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8_t ;
typedef  int u32_t ;
typedef  scalar_t__ (* spiffs_visitor_f ) (TYPE_1__*,scalar_t__,int,int,void const*,void*) ;
typedef  scalar_t__ spiffs_obj_id ;
typedef  int spiffs_block_ix ;
struct TYPE_11__ {scalar_t__ block_count; scalar_t__ lu_work; } ;
typedef  TYPE_1__ spiffs ;
typedef  scalar_t__ s32_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ SPIFFS_OK ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_LU ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int SPIFFS_VIS_CHECK_ID ; 
 int SPIFFS_VIS_CHECK_PH ; 
 scalar_t__ SPIFFS_VIS_COUNTINUE ; 
 scalar_t__ SPIFFS_VIS_COUNTINUE_RELOAD ; 
 scalar_t__ SPIFFS_VIS_END ; 
 int SPIFFS_VIS_NO_WRAP ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 

s32_t FUNC7(
    spiffs *fs,
    spiffs_block_ix starting_block,
    int starting_lu_entry,
    u8_t flags,
    spiffs_obj_id obj_id,
    spiffs_visitor_f v,
    const void *user_const_p,
    void *user_var_p,
    spiffs_block_ix *block_ix,
    int *lu_entry) {
  s32_t res = SPIFFS_OK;
  s32_t entry_count = fs->block_count * FUNC3(fs);
  spiffs_block_ix cur_block = starting_block;
  u32_t cur_block_addr = starting_block * FUNC0(fs);

  spiffs_obj_id *obj_lu_buf = (spiffs_obj_id *)fs->lu_work;
  int cur_entry = starting_lu_entry;
  int entries_per_page = (FUNC1(fs) / sizeof(spiffs_obj_id));

  // wrap initial
  if (cur_entry > (int)FUNC3(fs) - 1) {
    cur_entry = 0;
    cur_block++;
    cur_block_addr = cur_block * FUNC0(fs);
    if (cur_block >= fs->block_count) {
      if (flags & SPIFFS_VIS_NO_WRAP) {
        return SPIFFS_VIS_END;
      } else {
        // block wrap
        cur_block = 0;
        cur_block_addr = 0;
      }
    }
  }

  // check each block
  while (res == SPIFFS_OK && entry_count > 0) {
    int obj_lookup_page = cur_entry / entries_per_page;
    // check each object lookup page
    while (res == SPIFFS_OK && obj_lookup_page < (int)FUNC4(fs)) {
      int entry_offset = obj_lookup_page * entries_per_page;
      res = FUNC6(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_READ,
          0, cur_block_addr + FUNC5(fs, obj_lookup_page), FUNC1(fs), fs->lu_work);
      // check each entry
      while (res == SPIFFS_OK &&
          cur_entry - entry_offset < entries_per_page && // for non-last obj lookup pages
          cur_entry < (int)FUNC3(fs)) // for last obj lookup page
      {
        if ((flags & SPIFFS_VIS_CHECK_ID) == 0 || obj_lu_buf[cur_entry-entry_offset] == obj_id) {
          if (block_ix) *block_ix = cur_block;
          if (lu_entry) *lu_entry = cur_entry;
          if (v) {
            res = v(
                fs,
                (flags & SPIFFS_VIS_CHECK_PH) ? obj_id : obj_lu_buf[cur_entry-entry_offset],
                cur_block,
                cur_entry,
                user_const_p,
                user_var_p);
            if (res == SPIFFS_VIS_COUNTINUE || res == SPIFFS_VIS_COUNTINUE_RELOAD) {
              if (res == SPIFFS_VIS_COUNTINUE_RELOAD) {
                res = FUNC6(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_READ,
                    0, cur_block_addr + FUNC5(fs, obj_lookup_page), FUNC1(fs), fs->lu_work);
                FUNC2(res);
              }
              res = SPIFFS_OK;
              cur_entry++;
              entry_count--;
              continue;
            } else {
              return res;
            }
          } else {
            return SPIFFS_OK;
          }
        }
        entry_count--;
        cur_entry++;
      } // per entry
      obj_lookup_page++;
    } // per object lookup page
    cur_entry = 0;
    cur_block++;
    cur_block_addr += FUNC0(fs);
    if (cur_block >= fs->block_count) {
      if (flags & SPIFFS_VIS_NO_WRAP) {
        return SPIFFS_VIS_END;
      } else {
        // block wrap
        cur_block = 0;
        cur_block_addr = 0;
      }
    }
  } // per block

  FUNC2(res);

  return SPIFFS_VIS_END;
}