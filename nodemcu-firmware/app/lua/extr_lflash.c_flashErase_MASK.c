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
typedef  int uint32_t ;

/* Variables and functions */
 int FLASH_PAGES ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ flashSector ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(uint32_t start, uint32_t end){
  int i;
  if (start == -1) start = FLASH_PAGES - 1;
  if (end == -1) end = FLASH_PAGES - 1;
  FUNC0("flashErase(%04x,%04x)\n", flashSector+start, flashSector+end);
  for (i = start; i<=end; i++)
    FUNC1( flashSector + i );
}