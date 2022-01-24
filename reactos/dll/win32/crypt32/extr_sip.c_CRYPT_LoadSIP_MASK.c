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
struct TYPE_3__ {int /*<<< orphan*/ * hSIP; void* pfRemove; void* pfVerify; void* pfCreate; void* pfPut; void* pfGet; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SIP_DISPATCH_INFO ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TRUST_E_SUBJECT_FORM_UNKNOWN ; 
 int /*<<< orphan*/  szCreate ; 
 int /*<<< orphan*/  szGetSigned ; 
 int /*<<< orphan*/  szPutSigned ; 
 int /*<<< orphan*/  szRemoveSigned ; 
 int /*<<< orphan*/  szVerify ; 

__attribute__((used)) static BOOL FUNC4(const GUID *pgSubject)
{
    SIP_DISPATCH_INFO sip = { 0 };
    HMODULE lib = NULL, temp = NULL;

    sip.pfGet = FUNC1(pgSubject, szGetSigned, &lib);
    if (!sip.pfGet)
        goto error;
    sip.pfPut = FUNC1(pgSubject, szPutSigned, &temp);
    if (!sip.pfPut || temp != lib)
        goto error;
    FUNC2(temp);
    temp = NULL;
    sip.pfCreate = FUNC1(pgSubject, szCreate, &temp);
    if (!sip.pfCreate || temp != lib)
        goto error;
    FUNC2(temp);
    temp = NULL;
    sip.pfVerify = FUNC1(pgSubject, szVerify, &temp);
    if (!sip.pfVerify || temp != lib)
        goto error;
    FUNC2(temp);
    temp = NULL;
    sip.pfRemove = FUNC1(pgSubject, szRemoveSigned, &temp);
    if (!sip.pfRemove || temp != lib)
        goto error;
    FUNC2(temp);
    sip.hSIP = lib;
    FUNC0(pgSubject, &sip);
    return TRUE;

error:
    FUNC2(lib);
    FUNC2(temp);
    FUNC3(TRUST_E_SUBJECT_FORM_UNKNOWN);
    return FALSE;
}