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
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 

__attribute__((used)) static COLORREF FUNC2(int hue, int sat, int lum)
{
 int h, r, g, b;

 /* r */
 h = hue > 80 ? hue-80 : hue+160;
 r = FUNC1(h, sat, lum);
 /* g */
 h = hue > 160 ? hue-160 : hue+80;
 g = FUNC1(h, sat, lum);
 /* b */
 b = FUNC1(hue, sat, lum);

 return FUNC0(r, g, b);
}