
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AceSize; void* AceFlags; void* AceType; } ;
struct TYPE_7__ {int Mask; TYPE_1__ Header; int SidStart; } ;
struct TYPE_6__ {int AclSize; int AceCount; scalar_t__ Sbz2; scalar_t__ Sbz1; int AclRevision; } ;
typedef TYPE_2__* PACL ;
typedef TYPE_3__* PACCESS_ALLOWED_ACE ;
typedef int* LPDWORD ;
typedef char* LPCWSTR ;
typedef int LPBYTE ;
typedef int DWORD ;
typedef void* BYTE ;
typedef int BOOL ;
typedef int ACL ;
typedef int ACCESS_ALLOWED_ACE ;


 int ACL_REVISION ;
 int ERR (char*) ;
 int ERROR_INVALID_ACL ;
 int FALSE ;
 int FIXME (char*) ;
 int ParseAceStringFlags (char**) ;
 int ParseAceStringRights (char**) ;
 int ParseAceStringType (char**) ;
 int ParseAclStringFlags (char**) ;
 scalar_t__ ParseStringSidToSid (char*,int *,int*) ;
 int RPC_S_INVALID_STRING_UUID ;
 int SetLastError (int) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WARN (char*) ;
 int debugstr_w (char*) ;

__attribute__((used)) static BOOL ParseStringAclToAcl(LPCWSTR StringAcl, LPDWORD lpdwFlags,
    PACL pAcl, LPDWORD cBytes)
{
    DWORD val;
    DWORD sidlen;
    DWORD length = sizeof(ACL);
    DWORD acesize = 0;
    DWORD acecount = 0;
    PACCESS_ALLOWED_ACE pAce = ((void*)0);
    DWORD error = ERROR_INVALID_ACL;

    TRACE("%s\n", debugstr_w(StringAcl));

    if (!StringAcl)
 return FALSE;

    if (pAcl)
        pAce = (PACCESS_ALLOWED_ACE) (pAcl + 1);


    *lpdwFlags = ParseAclStringFlags(&StringAcl);


    while (*StringAcl == '(')
    {
        StringAcl++;


        val = ParseAceStringType(&StringAcl);
 if (pAce)
            pAce->Header.AceType = (BYTE) val;
        if (*StringAcl != ';')
        {
            error = RPC_S_INVALID_STRING_UUID;
            goto lerr;
        }
        StringAcl++;


 val = ParseAceStringFlags(&StringAcl);
 if (pAce)
            pAce->Header.AceFlags = (BYTE) val;
        if (*StringAcl != ';')
            goto lerr;
        StringAcl++;


 val = ParseAceStringRights(&StringAcl);
 if (pAce)
            pAce->Mask = val;
        if (*StringAcl != ';')
            goto lerr;
        StringAcl++;


        while (*StringAcl == ' ')
            StringAcl++;
        if (*StringAcl != ';')
        {
            FIXME("Support for *_OBJECT_ACE_TYPE not implemented\n");
            goto lerr;
        }
        StringAcl++;


        while (*StringAcl == ' ')
            StringAcl++;
        if (*StringAcl != ';')
        {
            FIXME("Support for *_OBJECT_ACE_TYPE not implemented\n");
            goto lerr;
        }
        StringAcl++;


        if (ParseStringSidToSid(StringAcl, pAce ? &pAce->SidStart : ((void*)0), &sidlen))
 {
            while (*StringAcl && *StringAcl != ')')
                StringAcl++;
 }

        if (*StringAcl != ')')
            goto lerr;
        StringAcl++;

        acesize = sizeof(ACCESS_ALLOWED_ACE) - sizeof(DWORD) + sidlen;
        length += acesize;
        if (pAce)
        {
            pAce->Header.AceSize = acesize;
            pAce = (PACCESS_ALLOWED_ACE)((LPBYTE)pAce + acesize);
        }
        acecount++;
    }

    *cBytes = length;

    if (length > 0xffff)
    {
        ERR("ACL too large\n");
        goto lerr;
    }

    if (pAcl)
    {
        pAcl->AclRevision = ACL_REVISION;
        pAcl->Sbz1 = 0;
        pAcl->AclSize = length;
        pAcl->AceCount = acecount;
        pAcl->Sbz2 = 0;
    }
    return TRUE;

lerr:
    SetLastError(error);
    WARN("Invalid ACE string format\n");
    return FALSE;
}
