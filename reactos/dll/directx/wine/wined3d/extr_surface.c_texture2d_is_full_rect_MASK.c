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
struct wined3d_texture {int dummy; } ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (struct wined3d_texture const*,unsigned int) ; 
 unsigned int FUNC2 (struct wined3d_texture const*,unsigned int) ; 

__attribute__((used)) static BOOL FUNC3(const struct wined3d_texture *texture, unsigned int level, const RECT *r)
{
    unsigned int t;

    t = FUNC2(texture, level);
    if ((r->left && r->right) || FUNC0(r->right - r->left) != t)
        return FALSE;
    t = FUNC1(texture, level);
    if ((r->top && r->bottom) || FUNC0(r->bottom - r->top) != t)
        return FALSE;
    return TRUE;
}