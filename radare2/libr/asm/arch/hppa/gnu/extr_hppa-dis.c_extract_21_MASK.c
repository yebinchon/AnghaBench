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
 int FUNC0 (unsigned int,int,int) ; 
 unsigned int MASK_21 ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int
FUNC2 (unsigned word)
{
  int val;

  word &= MASK_21;
  word <<= 11;
  val = FUNC0 (word, 20, 20);
  val <<= 11;
  val |= FUNC0 (word, 9, 19);
  val <<= 2;
  val |= FUNC0 (word, 5, 6);
  val <<= 5;
  val |= FUNC0 (word, 0, 4);
  val <<= 2;
  val |= FUNC0 (word, 7, 8);
  return FUNC1 (val, 21) << 11;
}