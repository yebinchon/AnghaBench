#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8_t ;
typedef  int /*<<< orphan*/  spiffs_page_ix ;
typedef  int /*<<< orphan*/  spiffs_obj_id ;
struct TYPE_9__ {int /*<<< orphan*/  stats_p_allocated; int /*<<< orphan*/  stats_p_deleted; } ;
typedef  TYPE_1__ spiffs ;
typedef  int /*<<< orphan*/  s32_t ;
typedef  int /*<<< orphan*/  flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIFFS_OBJ_ID_DELETED ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int SPIFFS_OP_C_DELE ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_DA ; 
 int SPIFFS_OP_T_OBJ_LU ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int SPIFFS_PH_FLAG_DELET ; 
 int SPIFFS_PH_FLAG_USED ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  spiffs_page_header ; 

s32_t FUNC8(
    spiffs *fs,
    spiffs_page_ix pix) {
  s32_t res;
  // mark deleted entry in source object lookup
  spiffs_obj_id d_obj_id = SPIFFS_OBJ_ID_DELETED;
  res = FUNC6(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_DELE,
      0,
      FUNC1(fs, FUNC0(fs, pix)) + FUNC3(fs, pix) * sizeof(spiffs_page_ix),
      sizeof(spiffs_obj_id),
      (u8_t *)&d_obj_id);
  FUNC2(res);

  fs->stats_p_deleted++;
  fs->stats_p_allocated--;

  // mark deleted in source page
  u8_t flags = 0xff;
#if SPIFFS_NO_BLIND_WRITES
  res = _spiffs_rd(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_READ,
      0, SPIFFS_PAGE_TO_PADDR(fs, pix) + offsetof(spiffs_page_header, flags),
      sizeof(flags), &flags);
  SPIFFS_CHECK_RES(res);
#endif
  flags &= ~(SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_USED);
  res = FUNC6(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_DELE,
      0,
      FUNC4(fs, pix) + FUNC7(spiffs_page_header, flags),
      sizeof(flags), &flags);

  return res;
}