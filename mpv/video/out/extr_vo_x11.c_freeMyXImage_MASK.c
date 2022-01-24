#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* x11; } ;
struct priv {int /*<<< orphan*/ ** myximage; TYPE_2__* Shminfo; scalar_t__ Shmem_Flag; struct vo* vo; } ;
struct TYPE_4__ {int /*<<< orphan*/  shmaddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct priv *p, int foo)
{
    struct vo *vo = p->vo;
    if (p->Shmem_Flag) {
        FUNC1(vo->x11->display, &p->Shminfo[foo]);
        FUNC0(p->myximage[foo]);
        FUNC2(p->Shminfo[foo].shmaddr);
    } else {
        if (p->myximage[foo])
            FUNC0(p->myximage[foo]);
    }
    p->myximage[foo] = NULL;
}