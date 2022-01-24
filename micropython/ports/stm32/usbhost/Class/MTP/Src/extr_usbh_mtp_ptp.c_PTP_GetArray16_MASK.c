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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC2 (uint16_t *array, uint8_t *data, uint32_t offset)
{
  uint32_t size, idx = 0;
  
  size=FUNC1(&data[offset]);
  while (size > idx) 
  {
    array[idx] = FUNC0(&data[offset+(sizeof(uint16_t)*(idx+2))]);
    idx++;
  }
  return size;
}