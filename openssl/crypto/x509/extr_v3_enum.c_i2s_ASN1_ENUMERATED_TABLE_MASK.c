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
struct TYPE_5__ {TYPE_2__* usr_data; } ;
typedef  TYPE_1__ X509V3_EXT_METHOD ;
struct TYPE_6__ {long bitnum; scalar_t__ lname; } ;
typedef  TYPE_2__ ENUMERATED_NAMES ;
typedef  int /*<<< orphan*/  ASN1_ENUMERATED ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

char *FUNC3(X509V3_EXT_METHOD *method,
                                const ASN1_ENUMERATED *e)
{
    ENUMERATED_NAMES *enam;
    long strval;

    strval = FUNC0(e);
    for (enam = method->usr_data; enam->lname; enam++) {
        if (strval == enam->bitnum)
            return FUNC1(enam->lname);
    }
    return FUNC2(method, e);
}