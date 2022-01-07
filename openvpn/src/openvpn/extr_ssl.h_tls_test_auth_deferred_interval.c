
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_multi {TYPE_1__* session; } ;
struct key_state {scalar_t__ auth_deferred_expire; } ;
struct TYPE_2__ {struct key_state* key; } ;


 size_t KS_PRIMARY ;
 size_t TM_ACTIVE ;
 scalar_t__ now ;

__attribute__((used)) static inline bool
tls_test_auth_deferred_interval(const struct tls_multi *multi)
{
    if (multi)
    {
        const struct key_state *ks = &multi->session[TM_ACTIVE].key[KS_PRIMARY];
        return now < ks->auth_deferred_expire;
    }
    return 0;
}
