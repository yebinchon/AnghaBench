
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
typedef int ULONG ;
struct TYPE_6__ {int AceType; int AceFlags; } ;
struct TYPE_8__ {int SidStart; int Mask; TYPE_1__ Header; } ;
struct TYPE_7__ {scalar_t__ AceType; int AceSize; } ;
typedef int PSID ;
typedef TYPE_2__* PACE_HEADER ;
typedef TYPE_3__* LPVOID ;
typedef int BOOL ;
typedef TYPE_3__ ACCESS_ALLOWED_ACE ;




 int CONTAINER_INHERIT_ACE ;
 int DumpRights (int ,char**,int *) ;
 int DumpSid (int ,char**,int *) ;
 int DumpString (char const*,int,char**,int *) ;
 int ERROR_INVALID_ACL ;
 int FAILED_ACCESS_ACE_FLAG ;
 int FALSE ;
 int INHERITED_ACE ;
 int INHERIT_ONLY_ACE ;
 int NO_PROPAGATE_INHERIT_ACE ;
 int OBJECT_INHERIT_ACE ;
 char const* SDDL_ACCESS_ALLOWED ;
 char const* SDDL_ACCESS_DENIED ;
 char const* SDDL_ALARM ;
 char const* SDDL_AUDIT ;
 char const* SDDL_AUDIT_FAILURE ;
 char const* SDDL_AUDIT_SUCCESS ;
 char const* SDDL_CONTAINER_INHERIT ;
 char const* SDDL_INHERITED ;
 char const* SDDL_INHERIT_ONLY ;
 char const* SDDL_NO_PROPAGATE ;
 char const* SDDL_OBJECT_INHERIT ;
 int SUCCESSFUL_ACCESS_ACE_FLAG ;


 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL DumpAce(LPVOID pace, WCHAR **pwptr, ULONG *plen)
{
    ACCESS_ALLOWED_ACE *piace;
    static const WCHAR openbr = '(';
    static const WCHAR closebr = ')';
    static const WCHAR semicolon = ';';

    if (((PACE_HEADER)pace)->AceType > 129 || ((PACE_HEADER)pace)->AceSize < sizeof(ACCESS_ALLOWED_ACE))
    {
        SetLastError(ERROR_INVALID_ACL);
        return FALSE;
    }

    piace = pace;
    DumpString(&openbr, 1, pwptr, plen);
    switch (piace->Header.AceType)
    {
        case 131:
            DumpString(SDDL_ACCESS_ALLOWED, -1, pwptr, plen);
            break;
        case 130:
            DumpString(SDDL_ACCESS_DENIED, -1, pwptr, plen);
            break;
        case 128:
            DumpString(SDDL_AUDIT, -1, pwptr, plen);
            break;
        case 129:
            DumpString(SDDL_ALARM, -1, pwptr, plen);
            break;
    }
    DumpString(&semicolon, 1, pwptr, plen);

    if (piace->Header.AceFlags & OBJECT_INHERIT_ACE)
        DumpString(SDDL_OBJECT_INHERIT, -1, pwptr, plen);
    if (piace->Header.AceFlags & CONTAINER_INHERIT_ACE)
        DumpString(SDDL_CONTAINER_INHERIT, -1, pwptr, plen);
    if (piace->Header.AceFlags & NO_PROPAGATE_INHERIT_ACE)
        DumpString(SDDL_NO_PROPAGATE, -1, pwptr, plen);
    if (piace->Header.AceFlags & INHERIT_ONLY_ACE)
        DumpString(SDDL_INHERIT_ONLY, -1, pwptr, plen);
    if (piace->Header.AceFlags & INHERITED_ACE)
        DumpString(SDDL_INHERITED, -1, pwptr, plen);
    if (piace->Header.AceFlags & SUCCESSFUL_ACCESS_ACE_FLAG)
        DumpString(SDDL_AUDIT_SUCCESS, -1, pwptr, plen);
    if (piace->Header.AceFlags & FAILED_ACCESS_ACE_FLAG)
        DumpString(SDDL_AUDIT_FAILURE, -1, pwptr, plen);
    DumpString(&semicolon, 1, pwptr, plen);
    DumpRights(piace->Mask, pwptr, plen);
    DumpString(&semicolon, 1, pwptr, plen);

    DumpString(&semicolon, 1, pwptr, plen);

    DumpString(&semicolon, 1, pwptr, plen);
    if (!DumpSid((PSID)&piace->SidStart, pwptr, plen))
        return FALSE;
    DumpString(&closebr, 1, pwptr, plen);
    return TRUE;
}
