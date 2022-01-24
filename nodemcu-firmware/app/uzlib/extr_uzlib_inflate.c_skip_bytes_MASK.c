#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ (* get_byte ) () ;} ;
typedef  TYPE_1__ UZLIB_DATA ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(UZLIB_DATA *d, int num) {
  if (num)             /* Skip a fixed number of bytes */
    while (num--) (void) d->get_byte();
  else                 /* Skip to next nullchar */
    while (d->get_byte()) {}
}