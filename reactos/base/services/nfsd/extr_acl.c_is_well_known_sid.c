
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WELL_KNOWN_SID_TYPE ;
typedef int PSID ;


 int ACE4_ANONYMOUS ;
 int ACE4_AUTHENTICATED ;
 int ACE4_BATCH ;
 int ACE4_DIALUP ;
 int ACE4_EVERYONE ;
 int ACE4_GROUP ;
 int ACE4_INTERACTIVE ;
 int ACE4_NETWORK ;
 int ACE4_NOBODY ;
 int ACE4_OWNER ;
 int ACE4_SERVICE ;
 int ACLLVL ;
 int FALSE ;
 int IsWellKnownSid (int ,scalar_t__) ;
 int TRUE ;
 int dprintf (int ,char*,int) ;
 int memcpy (char*,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int is_well_known_sid(PSID sid, char *who)
{
    int status, i;
    for (i = 0; i < 78; i++) {
        status = IsWellKnownSid(sid, (WELL_KNOWN_SID_TYPE)i);
        if (!status) continue;
        else {
            dprintf(ACLLVL, "WELL_KNOWN_SID_TYPE %d\n", i);
            switch((WELL_KNOWN_SID_TYPE)i) {
            case 136:
                memcpy(who, ACE4_OWNER, strlen(ACE4_OWNER)+1);
                return TRUE;
            case 130:
                memcpy(who, ACE4_NOBODY, strlen(ACE4_NOBODY)+1);
                return TRUE;
            case 141:
                memcpy(who, ACE4_ANONYMOUS, strlen(ACE4_ANONYMOUS)+1);
                return TRUE;
            case 128:
                memcpy(who, ACE4_EVERYONE, strlen(ACE4_EVERYONE)+1);
                return TRUE;
            case 137:
            case 138:
                memcpy(who, ACE4_GROUP, strlen(ACE4_GROUP)+1);
                return TRUE;
            case 140:
                memcpy(who, ACE4_AUTHENTICATED, strlen(ACE4_AUTHENTICATED)+1);
                return TRUE;
            case 135:
                memcpy(who, ACE4_DIALUP, strlen(ACE4_DIALUP)+1);
                return TRUE;
            case 131:
                memcpy(who, ACE4_NETWORK, strlen(ACE4_NETWORK)+1);
                return TRUE;
            case 139:
                memcpy(who, ACE4_BATCH, strlen(ACE4_BATCH)+1);
                return TRUE;
            case 134:
                memcpy(who, ACE4_INTERACTIVE, strlen(ACE4_INTERACTIVE)+1);
                return TRUE;
            case 132:
            case 133:
            case 129:
                memcpy(who, ACE4_SERVICE, strlen(ACE4_SERVICE)+1);
                return TRUE;
            default: return FALSE;
            }
        }
    }
    return FALSE;
}
