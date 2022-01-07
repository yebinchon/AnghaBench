
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_pass {char* username; TYPE_1__* name_value_list; } ;
struct pam_conv {void* appdata_ptr; int conv; } ;
typedef int pam_handle_t ;
struct TYPE_2__ {scalar_t__ len; } ;


 int PAM_SUCCESS ;
 int fprintf (int ,char*,char*,char*) ;
 int my_conv ;
 int pam_acct_mgmt (int *,int ) ;
 int pam_authenticate (int *,int ) ;
 int pam_end (int *,int) ;
 int pam_start (char const*,char*,struct pam_conv*,int **) ;
 char* pam_strerror (int *,int) ;
 int stderr ;

__attribute__((used)) static int
pam_auth(const char *service, const struct user_pass *up)
{
    struct pam_conv conv;
    pam_handle_t *pamh = ((void*)0);
    int status = PAM_SUCCESS;
    int ret = 0;
    const int name_value_list_provided = (up->name_value_list && up->name_value_list->len > 0);


    conv.conv = my_conv;
    conv.appdata_ptr = (void *)up;
    status = pam_start(service, name_value_list_provided ? ((void*)0) : up->username, &conv, &pamh);
    if (status == PAM_SUCCESS)
    {

        status = pam_authenticate(pamh, 0);
        if (status == PAM_SUCCESS)
        {
            status = pam_acct_mgmt(pamh, 0);
        }
        if (status == PAM_SUCCESS)
        {
            ret = 1;
        }


        if (!ret)
        {
            fprintf(stderr, "AUTH-PAM: BACKGROUND: user '%s' failed to authenticate: %s\n",
                    up->username,
                    pam_strerror(pamh, status));
        }


        pam_end(pamh, status);
    }

    return ret;
}
