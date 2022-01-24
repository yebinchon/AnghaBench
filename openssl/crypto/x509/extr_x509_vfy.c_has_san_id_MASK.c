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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int type; } ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  TYPE_1__ GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(X509 *x, int gtype)
{
    int i;
    int ret = 0;
    GENERAL_NAMES *gs = FUNC1(x, NID_subject_alt_name, NULL, NULL);

    if (gs == NULL)
        return 0;

    for (i = 0; i < FUNC2(gs); i++) {
        GENERAL_NAME *g = FUNC3(gs, i);

        if (g->type == gtype) {
            ret = 1;
            break;
        }
    }
    FUNC0(gs);
    return ret;
}