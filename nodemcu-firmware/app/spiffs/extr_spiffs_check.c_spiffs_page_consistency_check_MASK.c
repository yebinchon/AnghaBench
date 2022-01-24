#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  spiffs ;
typedef  scalar_t__ s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIFFS_CHECK_ERROR ; 
 int /*<<< orphan*/  SPIFFS_CHECK_PAGE ; 
 int /*<<< orphan*/  SPIFFS_CHECK_PROGRESS ; 
 scalar_t__ SPIFFS_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

s32_t FUNC2(spiffs *fs) {
  FUNC0(fs, SPIFFS_CHECK_PAGE, SPIFFS_CHECK_PROGRESS, 0, 0);
  s32_t res = FUNC1(fs);
  if (res != SPIFFS_OK) {
    FUNC0(fs, SPIFFS_CHECK_PAGE, SPIFFS_CHECK_ERROR, res, 0);
  }
  FUNC0(fs, SPIFFS_CHECK_PAGE, SPIFFS_CHECK_PROGRESS, 256, 0);
  return res;
}