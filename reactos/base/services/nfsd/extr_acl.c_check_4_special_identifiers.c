
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WELL_KNOWN_SID_TYPE ;
typedef int PSID ;
typedef int DWORD ;
typedef scalar_t__ BOOLEAN ;


 int ACE4_EVERYONE ;
 int ACE4_GROUP ;
 int ACE4_NOBODY ;
 int ACE4_OWNER ;
 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int WinCreatorGroupSid ;
 int WinCreatorOwnerSid ;
 int WinNullSid ;
 int WinWorldSid ;
 int create_unknownsid (int ,int *,int *) ;
 scalar_t__ strlen (int ) ;
 int strncmp (char*,int ,scalar_t__) ;

__attribute__((used)) static int check_4_special_identifiers(char *who, PSID *sid, DWORD *sid_len,
                                       BOOLEAN *flag)
{
    int status = ERROR_SUCCESS;
    WELL_KNOWN_SID_TYPE type = 0;
    *flag = TRUE;
    if (!strncmp(who, ACE4_OWNER, strlen(ACE4_OWNER)-1))
        type = WinCreatorOwnerSid;
    else if (!strncmp(who, ACE4_GROUP, strlen(ACE4_GROUP)-1))
        type = WinCreatorGroupSid;
    else if (!strncmp(who, ACE4_EVERYONE, strlen(ACE4_EVERYONE)-1))
        type = WinWorldSid;
    else if (!strncmp(who, ACE4_NOBODY, strlen(ACE4_NOBODY)))
        type = WinNullSid;
    else
        *flag = FALSE;
    if (*flag)
        status = create_unknownsid(type, sid, sid_len);
    return status;
}
