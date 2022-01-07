
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tls_multi {TYPE_2__* session; } ;
struct TYPE_4__ {TYPE_1__* key; } ;
struct TYPE_3__ {int authenticated; } ;


 int KS_SIZE ;
 int TM_SIZE ;
 int wipe_auth_token (struct tls_multi*) ;

__attribute__((used)) static void
tls_deauthenticate(struct tls_multi *multi)
{
    if (multi)
    {
        wipe_auth_token(multi);
        for (int i = 0; i < TM_SIZE; ++i)
        {
            for (int j = 0; j < KS_SIZE; ++j)
            {
                multi->session[i].key[j].authenticated = 0;
            }
        }
    }
}
