
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int lgrmi0_sid; } ;
struct TYPE_7__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_6__ {int Sid; } ;
typedef TYPE_2__* PTOKEN_GROUPS ;
typedef int PSID ;
typedef int LPBYTE ;
typedef TYPE_3__ LOCALGROUP_MEMBERS_INFO_0 ;
typedef int DWORD_PTR ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 size_t ERROR_MORE_DATA ;
 scalar_t__ EqualSid (int ,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ LookupSID (int const*,int ,int ) ;
 int MAX_PREFERRED_LENGTH ;
 int M_SYSERR ;
 int MsgToEventLog (int ,int ,int const*) ;
 size_t NERR_GroupNotFound ;
 size_t NERR_Success ;
 int NetApiBufferFree (TYPE_3__*) ;
 size_t NetLocalGroupGetMembers (int *,int const*,int ,int *,int ,size_t*,size_t*,int *) ;
 int SECURITY_MAX_SID_SIZE ;
 int SetLastError (size_t) ;
 int TEXT (char*) ;
 scalar_t__ TRUE ;
 int _countof (int *) ;

__attribute__((used)) static BOOL
IsUserInGroup(PSID sid, const PTOKEN_GROUPS token_groups, const WCHAR *group_name)
{
    BOOL ret = FALSE;
    DWORD_PTR resume = 0;
    DWORD err;
    BYTE grp_sid[SECURITY_MAX_SID_SIZE];
    int nloop = 0;


    if (token_groups && LookupSID(group_name, (PSID) grp_sid, _countof(grp_sid)))
    {
        for (DWORD i = 0; i < token_groups->GroupCount; ++i)
        {
            if (EqualSid((PSID) grp_sid, token_groups->Groups[i].Sid))
            {
                return TRUE;
            }
        }
    }


    if (!sid)
    {
        return FALSE;
    }
    do
    {
        DWORD nread, nmax;
        LOCALGROUP_MEMBERS_INFO_0 *members = ((void*)0);
        err = NetLocalGroupGetMembers(((void*)0), group_name, 0, (LPBYTE *) &members,
                                      MAX_PREFERRED_LENGTH, &nread, &nmax, &resume);
        if ((err != NERR_Success && err != ERROR_MORE_DATA))
        {
            break;
        }

        for (DWORD i = 0; i < nread && !ret; ++i)
        {
            ret = EqualSid(members[i].lgrmi0_sid, sid);
        }
        NetApiBufferFree(members);

    } while (err == ERROR_MORE_DATA && nloop++ < 100);

    if (err != NERR_Success && err != NERR_GroupNotFound)
    {
        SetLastError(err);
        MsgToEventLog(M_SYSERR, TEXT("In NetLocalGroupGetMembers for group '%s'"), group_name);
    }

    return ret;
}
