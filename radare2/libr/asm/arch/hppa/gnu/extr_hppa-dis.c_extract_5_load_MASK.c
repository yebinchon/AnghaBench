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

/* Variables and functions */
 int MASK_5 ; 
 int FUNC0 (unsigned int,int) ; 

__attribute__((used)) static int
FUNC1 (unsigned word)
{
  return FUNC0 (word >> 16 & MASK_5, 5);
}