
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ SRTP_PROTECTION_PROFILE ;


 TYPE_1__* srtp_known_profiles ;
 size_t strlen (scalar_t__) ;
 scalar_t__ strncmp (scalar_t__,char*,size_t) ;

__attribute__((used)) static int find_profile_by_name(char *profile_name,
                                SRTP_PROTECTION_PROFILE **pptr, size_t len)
{
    SRTP_PROTECTION_PROFILE *p;

    p = srtp_known_profiles;
    while (p->name) {
        if ((len == strlen(p->name))
            && strncmp(p->name, profile_name, len) == 0) {
            *pptr = p;
            return 0;
        }

        p++;
    }

    return 1;
}
