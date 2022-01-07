
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_5__ {int AceCount; } ;
typedef TYPE_1__* PACL ;
typedef int LPVOID ;
typedef scalar_t__ BOOL ;


 int DumpAce (int ,int **,int *) ;
 int DumpString (int ,int,int **,int *) ;
 scalar_t__ FALSE ;
 int GetAce (TYPE_1__*,int,int *) ;
 int IsValidAcl (TYPE_1__*) ;
 int SDDL_AUTO_INHERITED ;
 int SDDL_AUTO_INHERIT_REQ ;
 int SDDL_PROTECTED ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL DumpAcl(PACL pacl, WCHAR **pwptr, ULONG *plen, BOOL protected, BOOL autoInheritReq, BOOL autoInherited)
{
    WORD count;
    int i;

    if (protected)
        DumpString(SDDL_PROTECTED, -1, pwptr, plen);
    if (autoInheritReq)
        DumpString(SDDL_AUTO_INHERIT_REQ, -1, pwptr, plen);
    if (autoInherited)
        DumpString(SDDL_AUTO_INHERITED, -1, pwptr, plen);

    if (pacl == ((void*)0))
        return TRUE;

    if (!IsValidAcl(pacl))
        return FALSE;

    count = pacl->AceCount;
    for (i = 0; i < count; i++)
    {
        LPVOID ace;
        if (!GetAce(pacl, i, &ace))
            return FALSE;
        if (!DumpAce(ace, pwptr, plen))
            return FALSE;
    }

    return TRUE;
}
