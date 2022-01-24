#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  CMS_SignerInfo ;
typedef  TYPE_1__ ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CMS_F_CMS_ADD1_SIGNINGTIME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_pkcs9_signingTime ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(CMS_SignerInfo *si, ASN1_TIME *t)
{
    ASN1_TIME *tt;
    int r = 0;
    if (t)
        tt = t;
    else
        tt = FUNC3(NULL, 0);

    if (!tt)
        goto merr;

    if (FUNC1(si, NID_pkcs9_signingTime,
                                    tt->type, tt, -1) <= 0)
        goto merr;

    r = 1;

 merr:

    if (!t)
        FUNC0(tt);

    if (!r)
        FUNC2(CMS_F_CMS_ADD1_SIGNINGTIME, ERR_R_MALLOC_FAILURE);

    return r;

}