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
struct ra_hwdec_mapper {int /*<<< orphan*/ * tex; int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {int /*<<< orphan*/ * rtarget; scalar_t__ texture; scalar_t__ rtarget_h; scalar_t__ device_h; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* DeleteTextures ) (int,scalar_t__*) ;int /*<<< orphan*/  (* DXUnregisterObjectNV ) (scalar_t__,scalar_t__) ;int /*<<< orphan*/  (* DXUnlockObjectsNV ) (scalar_t__,int,scalar_t__*) ;} ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__*) ; 

__attribute__((used)) static void FUNC8(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = FUNC3(mapper->ra);

    if (p->rtarget_h && p->device_h) {
        if (!gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
            FUNC1(mapper, "Failed unlocking texture for access by OpenGL: %s\n",
                   FUNC2());
        }
    }

    if (p->rtarget_h) {
        if (!gl->DXUnregisterObjectNV(p->device_h, p->rtarget_h)) {
            FUNC1(mapper, "Failed to unregister Direct3D surface with OpenGL: %s\n",
                   FUNC2());
        } else {
            p->rtarget_h = 0;
        }
    }

    gl->DeleteTextures(1, &p->texture);
    p->texture = 0;

    if (p->rtarget) {
        FUNC0(p->rtarget);
        p->rtarget = NULL;
    }

    FUNC4(mapper->ra, &mapper->tex[0]);
}