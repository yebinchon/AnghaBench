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
 int /*<<< orphan*/  color_fixup_rg ; 
 int /*<<< orphan*/  color_fixup_rgba ; 
 int /*<<< orphan*/  color_fixup_rgl ; 
 scalar_t__ FUNC0 (struct color_fixup_desc) ; 
 scalar_t__ FUNC1 (struct color_fixup_desc,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC2(struct color_fixup_desc fixup)
{
    /* We only support sign fixup of the first two channels. */
    return FUNC0(fixup) || FUNC1(fixup, color_fixup_rg)
            || FUNC1(fixup, color_fixup_rgl) || FUNC1(fixup, color_fixup_rgba);
}