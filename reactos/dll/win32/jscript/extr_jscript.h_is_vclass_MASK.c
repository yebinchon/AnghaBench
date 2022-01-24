#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  jsdisp; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  TYPE_2__ vdisp_t ;
typedef  int /*<<< orphan*/  jsclass_t ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static inline BOOL FUNC2(vdisp_t *vdisp, jsclass_t class)
{
    return FUNC1(vdisp) && FUNC0(vdisp->u.jsdisp, class);
}