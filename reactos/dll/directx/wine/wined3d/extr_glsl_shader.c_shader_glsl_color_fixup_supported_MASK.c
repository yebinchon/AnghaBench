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
struct color_fixup_desc {int dummy; } ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct color_fixup_desc) ; 

__attribute__((used)) static BOOL FUNC1(struct color_fixup_desc fixup)
{
    /* We support everything except YUV conversions. */
    return !FUNC0(fixup);
}