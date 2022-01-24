#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  spiffs_page_ix ;
typedef  int /*<<< orphan*/  spiffs_page_header ;
typedef  int /*<<< orphan*/  spiffs_obj_id ;
typedef  int spiffs_block_ix ;
struct TYPE_8__ {int block_count; } ;
typedef  TYPE_1__ spiffs ;
typedef  scalar_t__ s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIFFS_CHECK_LOOKUP ; 
 int /*<<< orphan*/  SPIFFS_CHECK_PROGRESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 scalar_t__ SPIFFS_OK ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_LU2 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SPIFFS_VIS_COUNTINUE ; 
 scalar_t__ SPIFFS_VIS_COUNTINUE_RELOAD ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static s32_t FUNC6(spiffs *fs, spiffs_obj_id obj_id, spiffs_block_ix cur_block, int cur_entry,
    const void *user_const_p, void *user_var_p) {
  (void)user_const_p;
  (void)user_var_p;
  s32_t res = SPIFFS_OK;
  spiffs_page_header p_hdr;
  spiffs_page_ix cur_pix = FUNC2(fs, cur_block, cur_entry);

  FUNC0(fs, SPIFFS_CHECK_LOOKUP, SPIFFS_CHECK_PROGRESS,
      (cur_block * 256)/fs->block_count, 0);

  // load header
  res = FUNC4(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
      0, FUNC3(fs, cur_pix), sizeof(spiffs_page_header), (u8_t*)&p_hdr);
  FUNC1(res);

  int reload_lu = 0;

  res = FUNC5(fs, obj_id, &p_hdr, cur_pix, cur_block, cur_entry, &reload_lu);
  FUNC1(res);

  if (res == SPIFFS_OK) {
    return reload_lu ? SPIFFS_VIS_COUNTINUE_RELOAD : SPIFFS_VIS_COUNTINUE;
  }
  return res;
}