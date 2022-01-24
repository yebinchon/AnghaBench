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
typedef  scalar_t__ spiffs_block_ix ;
struct TYPE_9__ {scalar_t__ block_count; scalar_t__ max_erase_count; int /*<<< orphan*/  err_code; } ;
typedef  TYPE_1__ spiffs ;
typedef  int s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int SPIFFS_ERR_ERASE_FAIL ; 
 int /*<<< orphan*/  SPIFFS_ERR_MOUNTED ; 
 int SPIFFS_ERR_RO_NOT_IMPL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int SPIFFS_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,scalar_t__) ; 

s32_t FUNC6(spiffs *fs) {
#if SPIFFS_READ_ONLY
  (void)fs;
  return SPIFFS_ERR_RO_NOT_IMPL;
#else
  FUNC0(fs);
  if (FUNC2(fs)) {
    fs->err_code = SPIFFS_ERR_MOUNTED;
    return -1;
  }

  s32_t res;
  FUNC3(fs);

  spiffs_block_ix bix = 0;
  while (bix < fs->block_count) {
    fs->max_erase_count = 0;
    res = FUNC5(fs, bix);
    if (res != SPIFFS_OK) {
      res = SPIFFS_ERR_ERASE_FAIL;
    }
    FUNC1(fs, res);
    bix++;
  }

  FUNC4(fs);

  return 0;
#endif // SPIFFS_READ_ONLY
}