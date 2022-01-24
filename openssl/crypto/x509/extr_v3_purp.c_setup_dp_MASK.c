#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_12__ {int type; } ;
struct TYPE_11__ {int dp_reasons; TYPE_7__* distpoint; int /*<<< orphan*/  CRLissuer; TYPE_1__* reasons; } ;
struct TYPE_9__ {int /*<<< orphan*/ * directoryName; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_8__ {int length; int* data; } ;
typedef  TYPE_3__ GENERAL_NAME ;
typedef  TYPE_4__ DIST_POINT ;

/* Variables and functions */
 int CRLDP_ALL_REASONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ GEN_DIRNAME ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(X509 *x, DIST_POINT *dp)
{
    X509_NAME *iname = NULL;
    int i;
    if (dp->reasons) {
        if (dp->reasons->length > 0)
            dp->dp_reasons = dp->reasons->data[0];
        if (dp->reasons->length > 1)
            dp->dp_reasons |= (dp->reasons->data[1] << 8);
        dp->dp_reasons &= CRLDP_ALL_REASONS;
    } else
        dp->dp_reasons = CRLDP_ALL_REASONS;
    if (!dp->distpoint || (dp->distpoint->type != 1))
        return;
    for (i = 0; i < FUNC2(dp->CRLissuer); i++) {
        GENERAL_NAME *gen = FUNC3(dp->CRLissuer, i);
        if (gen->type == GEN_DIRNAME) {
            iname = gen->d.directoryName;
            break;
        }
    }
    if (!iname)
        iname = FUNC1(x);

    FUNC0(dp->distpoint, iname);

}