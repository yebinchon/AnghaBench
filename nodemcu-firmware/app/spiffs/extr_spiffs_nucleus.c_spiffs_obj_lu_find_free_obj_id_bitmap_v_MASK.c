#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u32_t ;
struct TYPE_9__ {scalar_t__ span_ix; int flags; } ;
struct TYPE_10__ {scalar_t__ name; TYPE_1__ p_hdr; } ;
typedef  TYPE_2__ spiffs_page_object_ix_header ;
typedef  int /*<<< orphan*/  spiffs_page_ix ;
typedef  int spiffs_obj_id ;
typedef  int /*<<< orphan*/  spiffs_block_ix ;
struct TYPE_11__ {int* work; } ;
typedef  TYPE_3__ spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPIFFS_ERR_CONFLICTING_NAME ; 
 int SPIFFS_OBJ_ID_DELETED ; 
 int SPIFFS_OBJ_ID_FREE ; 
 int SPIFFS_OBJ_ID_IX_FLAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_LU2 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int SPIFFS_PH_FLAG_DELET ; 
 int SPIFFS_PH_FLAG_FINAL ; 
 int SPIFFS_PH_FLAG_IXDELE ; 
 int /*<<< orphan*/  SPIFFS_VIS_COUNTINUE ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static s32_t FUNC6(spiffs *fs, spiffs_obj_id id, spiffs_block_ix bix, int ix_entry,
    const void *user_const_p, void *user_var_p) {
  if (id != SPIFFS_OBJ_ID_FREE && id != SPIFFS_OBJ_ID_DELETED) {
    spiffs_obj_id min_obj_id = *((spiffs_obj_id*)user_var_p);
    const u8_t *conflicting_name = (const u8_t*)user_const_p;

    // if conflicting name parameter is given, also check if this name is found in object index hdrs
    if (conflicting_name && (id & SPIFFS_OBJ_ID_IX_FLAG)) {
      spiffs_page_ix pix = FUNC2(fs, bix, ix_entry);
      int res;
      spiffs_page_object_ix_header objix_hdr;
      res = FUNC4(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
          0, FUNC3(fs, pix), sizeof(spiffs_page_object_ix_header), (u8_t *)&objix_hdr);
      FUNC1(res);
      if (objix_hdr.p_hdr.span_ix == 0 &&
          (objix_hdr.p_hdr.flags & (SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_FINAL | SPIFFS_PH_FLAG_IXDELE)) ==
              (SPIFFS_PH_FLAG_DELET | SPIFFS_PH_FLAG_IXDELE)) {
        if (FUNC5((const char*)user_const_p, (char*)objix_hdr.name) == 0) {
          return SPIFFS_ERR_CONFLICTING_NAME;
        }
      }
    }

    id &= ~SPIFFS_OBJ_ID_IX_FLAG;
    u32_t bit_ix = (id-min_obj_id) & 7;
    int byte_ix = (id-min_obj_id) >> 3;
    if (byte_ix >= 0 && (u32_t)byte_ix < FUNC0(fs)) {
      fs->work[byte_ix] |= (1<<bit_ix);
    }
  }
  return SPIFFS_VIS_COUNTINUE;
}