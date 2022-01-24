#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int SECURITY_DESCRIPTOR_CONTROL ;
typedef  int /*<<< orphan*/  PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  PACL ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SE_SACL_AUTO_INHERITED ; 
 int SE_SACL_AUTO_INHERIT_REQ ; 
 int SE_SACL_PROTECTED ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC4(PSECURITY_DESCRIPTOR SecurityDescriptor, WCHAR **pwptr, ULONG *plen)
{
    static const WCHAR sacl[] = {'S',':',0};
    SECURITY_DESCRIPTOR_CONTROL control;
    BOOL present, defaulted;
    DWORD revision;
    PACL pacl;

    if (!FUNC3(SecurityDescriptor, &present, &pacl, &defaulted))
        return FALSE;

    if (!FUNC2(SecurityDescriptor, &control, &revision))
        return FALSE;

    if (!present)
        return TRUE;

    FUNC1(sacl, 2, pwptr, plen);
    if (!FUNC0(pacl, pwptr, plen, control & SE_SACL_PROTECTED, control & SE_SACL_AUTO_INHERIT_REQ, control & SE_SACL_AUTO_INHERITED))
        return FALSE;
    return TRUE;
}