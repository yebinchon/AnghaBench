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
typedef  scalar_t__ u32_t ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 scalar_t__ PLATFORM_ERR ; 
 int /*<<< orphan*/  SPIFFS_ERR_INTERNAL ; 
 int /*<<< orphan*/  SPIFFS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ erase_cnt ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static s32_t FUNC3(u32_t addr, u32_t size) {
  u32_t sect_first = FUNC2(addr);
  u32_t sect_last = sect_first;
  while( sect_first <= sect_last ) {
    if (erase_cnt >= 0 && (erase_cnt++ & 0xF) == 0) {
      FUNC0(".");
    }
    if( FUNC1( sect_first ++ ) == PLATFORM_ERR ) {
      return SPIFFS_ERR_INTERNAL;
    }
  }
  return SPIFFS_OK;
}