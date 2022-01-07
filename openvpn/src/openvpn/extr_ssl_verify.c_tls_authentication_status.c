
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {scalar_t__ tas_last; struct key_state** key_scan; } ;
struct key_state {int authenticated; int auth_deferred; scalar_t__ auth_deferred_expire; } ;






 int ASSERT (int) ;
 scalar_t__ DECRYPT_KEY_ENABLED (struct tls_multi*,struct key_state*) ;
 int D_TLS_ERRORS ;
 int KEY_SCAN_SIZE ;
 int TLS_AUTHENTICATION_DEFERRED ;
 int TLS_AUTHENTICATION_FAILED ;
 int TLS_AUTHENTICATION_SUCCEEDED ;
 int TLS_AUTHENTICATION_UNDEFINED ;
 int dmsg (int ,char*,int,int,int) ;
 unsigned int key_state_test_auth_control_file (struct key_state*) ;
 unsigned int man_def_auth_test (struct key_state*) ;
 scalar_t__ now ;

int
tls_authentication_status(struct tls_multi *multi, const int latency)
{
    bool deferred = 0;
    bool success = 0;
    bool active = 0;
    if (multi)
    {
        int i;
        for (i = 0; i < KEY_SCAN_SIZE; ++i)
        {
            struct key_state *ks = multi->key_scan[i];
            if (DECRYPT_KEY_ENABLED(multi, ks))
            {
                active = 1;
                if (ks->authenticated)
                {
                    success = 1;

                }
            }
        }
    }





    if (success)
    {
        return TLS_AUTHENTICATION_SUCCEEDED;
    }
    else if (!active || deferred)
    {
        return TLS_AUTHENTICATION_DEFERRED;
    }
    else
    {
        return TLS_AUTHENTICATION_FAILED;
    }
}
