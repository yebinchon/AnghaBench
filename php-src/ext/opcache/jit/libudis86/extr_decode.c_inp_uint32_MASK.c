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
struct ud {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ud*) ; 

__attribute__((used)) static uint32_t 
FUNC1(struct ud* u)
{
  uint32_t r, ret;

  ret = FUNC0(u);
  r = FUNC0(u);
  ret = ret | (r << 8);
  r = FUNC0(u);
  ret = ret | (r << 16);
  r = FUNC0(u);
  return ret | (r << 24);
}