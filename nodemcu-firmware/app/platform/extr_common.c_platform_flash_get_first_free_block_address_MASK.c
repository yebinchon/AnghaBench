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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ _flash_used_end ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

uint32_t FUNC3( uint32_t *psect )
{
  // Round the total used flash size to the closest flash block address
  uint32_t start, end, sect;
  FUNC0("_flash_used_end:%08x\n", (uint32_t)_flash_used_end);
  if(_flash_used_end>0){ // find the used sector
    sect = FUNC1( FUNC2 ( (uint32_t)_flash_used_end - 1), NULL, &end );
    if( psect )
      *psect = sect + 1;
    return end + 1;
  } else {
    sect = FUNC1( 0, &start, NULL ); // find the first free sector
    if( psect )
      *psect = sect;
    return start;
  }
}