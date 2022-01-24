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
struct vo {struct priv* priv; } ;
struct priv {TYPE_1__* kms; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ USE_MASTER ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
    struct vo *vo = data;
    FUNC1(vo);
    if (USE_MASTER) {
        //this function enables support for switching to x, weston etc.
        //however, for whatever reason, it can be called only by root users.
        //until things change, this is commented.
        struct priv *p = vo->priv;
        if (FUNC2(p->kms->fd)) {
            FUNC0(vo, "Failed to drop DRM master: %s\n", FUNC3(errno));
        }
    }
}