
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int SSL ;


 int SSL_SECOP_CURVE_CHECK ;
 scalar_t__ tls_group_allowed (int *,scalar_t__,int ) ;

int check_in_list(SSL *s, uint16_t group_id, const uint16_t *groups,
                  size_t num_groups, int checkallow)
{
    size_t i;

    if (groups == ((void*)0) || num_groups == 0)
        return 0;

    for (i = 0; i < num_groups; i++) {
        uint16_t group = groups[i];

        if (group_id == group
                && (!checkallow
                    || tls_group_allowed(s, group, SSL_SECOP_CURVE_CHECK))) {
            return 1;
        }
    }

    return 0;
}
