#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_8__ {scalar_t__ trueColor; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,unsigned int const,unsigned int const) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,unsigned int const,unsigned int const) ; 

gdImagePtr FUNC2(gdImagePtr im, const unsigned int new_width, const unsigned int new_height)
{
	if (im->trueColor) {
		return FUNC1(im, new_width, new_height);
	} else {
		return FUNC0(im, new_width, new_height);
	}
}