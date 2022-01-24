#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int pkistatus; int pkifailure; int /*<<< orphan*/  text; int /*<<< orphan*/  str; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef  TYPE_1__ OSSL_CMP_PKISI ;
typedef  TYPE_2__ CMP_STATUS_TEST_FIXTURE ;
typedef  TYPE_1__ ASN1_UTF8STRING ;

/* Variables and functions */
 int OSSL_CMP_PKIFAILUREINFO_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(CMP_STATUS_TEST_FIXTURE *fixture)
{
    OSSL_CMP_PKISI *si = NULL;
    int status;
    ASN1_UTF8STRING *statusString = NULL;
    int res = 0, i;

    if (!FUNC2(si = FUNC9(fixture->pkistatus,
                                               fixture->pkifailure,
                                               fixture->text)))
        goto end;

    status = FUNC7(si);
    if (!FUNC1(fixture->pkistatus, status)
            || !FUNC3(fixture->str, FUNC4(status)))
        goto end;

    if (!FUNC2(statusString =
                  FUNC10(FUNC5(si),
                                           0))
            || !FUNC3(fixture->text, (char *)statusString->data))
        goto end;

    if (!FUNC1(fixture->pkifailure,
                     FUNC6(si)))
        goto end;
    for (i = 0; i <= OSSL_CMP_PKIFAILUREINFO_MAX; i++)
        if (!FUNC1((fixture->pkifailure >> i) & 1,
                         FUNC8(si, i)))
            goto end;

    res = 1;

 end:
    FUNC0(si);
    return res;
}