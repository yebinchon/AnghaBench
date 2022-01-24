#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dim_m; } ;
struct ra_layout {scalar_t__ stride; } ;
struct sc_uniform {TYPE_1__ input; struct ra_layout layout; scalar_t__ offset; int /*<<< orphan*/  v; } ;
struct ra {int dummy; } ;
typedef  uintptr_t ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,scalar_t__) ; 
 struct ra_layout FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct ra *ra, void *pushc, struct sc_uniform *u)
{
    uintptr_t src = (uintptr_t) &u->v;
    uintptr_t dst = (uintptr_t) pushc + (ptrdiff_t) u->offset;
    struct ra_layout src_layout = FUNC1(&u->input);
    struct ra_layout dst_layout = u->layout;

    for (int i = 0; i < u->input.dim_m; i++) {
        FUNC0((void *)dst, (void *)src, src_layout.stride);
        src += src_layout.stride;
        dst += dst_layout.stride;
    }
}