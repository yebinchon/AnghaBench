#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* distpoint; } ;
struct TYPE_5__ {int /*<<< orphan*/ * fullname; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ name; } ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;
typedef  TYPE_3__ DIST_POINT ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int GEN_URI ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC6(DIST_POINT *dp)
{
    GENERAL_NAMES *gens;
    GENERAL_NAME *gen;
    int i, gtype;
    ASN1_STRING *uri;
    if (!dp->distpoint || dp->distpoint->type != 0)
        return NULL;
    gens = dp->distpoint->name.fullname;
    for (i = 0; i < FUNC3(gens); i++) {
        gen = FUNC4(gens, i);
        uri = FUNC2(gen, &gtype);
        if (gtype == GEN_URI && FUNC1(uri) > 6) {
            const char *uptr = (const char *)FUNC0(uri);
            if (FUNC5(uptr, "http://", 7) == 0)
                return uptr;
        }
    }
    return NULL;
}