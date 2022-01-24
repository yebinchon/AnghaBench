#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spiffs_page_ix ;
struct TYPE_4__ {int /*<<< orphan*/  obj_id; } ;
typedef  TYPE_1__ spiffs_page_header ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32_t FUNC5(spiffs *fs, spiffs_page_ix cur_pix, spiffs_page_header *p_hdr, spiffs_page_ix *new_pix) {
  s32_t res;
  res = FUNC3(fs, p_hdr->obj_id, p_hdr, 0,0,0,0, new_pix);
  FUNC0(res);
  res = FUNC4(fs, 0,
      FUNC2(fs, *new_pix) + sizeof(spiffs_page_header),
      FUNC2(fs, cur_pix) + sizeof(spiffs_page_header),
      FUNC1(fs));
  FUNC0(res);
  return res;
}