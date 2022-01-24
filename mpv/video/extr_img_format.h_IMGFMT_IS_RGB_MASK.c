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
struct mp_imgfmt_desc {int flags; int num_planes; } ;

/* Variables and functions */
 int MP_IMGFLAG_RGB ; 
 struct mp_imgfmt_desc FUNC0 (int) ; 

__attribute__((used)) static inline bool FUNC1(int fmt)
{
    struct mp_imgfmt_desc desc = FUNC0(fmt);
    return (desc.flags & MP_IMGFLAG_RGB) && desc.num_planes == 1;
}