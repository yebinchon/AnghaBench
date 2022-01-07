
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int up ;
struct user_pass {int verb; char* username; char* password; char* common_name; char* response; struct name_value_list const* name_value_list; } ;
struct name_value_list {int dummy; } ;




 scalar_t__ DEBUG (int) ;
 int RESPONSE_INIT_FAILED ;
 int RESPONSE_INIT_SUCCEEDED ;
 int RESPONSE_VERIFY_FAILED ;
 int RESPONSE_VERIFY_SUCCEEDED ;
 int dlclose_pam () ;
 char* dlerror () ;
 int dlopen_pam (char const*) ;
 int fprintf (int ,char*,...) ;
 int memset (struct user_pass*,int ,int) ;
 int pam_auth (char const*,struct user_pass*) ;
 int plugin_secure_memzero (char*,int) ;
 int recv_control (int) ;
 int recv_string (int,char*,int) ;
 int send_control (int,int ) ;
 int split_scrv1_password (struct user_pass*) ;
 int stderr ;

__attribute__((used)) static void
pam_server(int fd, const char *service, int verb, const struct name_value_list *name_value_list)
{
    struct user_pass up;
    int command;







    if (DEBUG(verb))
    {
        fprintf(stderr, "AUTH-PAM: BACKGROUND: INIT service='%s'\n", service);
    }
    if (send_control(fd, RESPONSE_INIT_SUCCEEDED) == -1)
    {
        fprintf(stderr, "AUTH-PAM: BACKGROUND: write error on response socket [1]\n");
        goto done;
    }




    while (1)
    {
        memset(&up, 0, sizeof(up));
        up.verb = verb;
        up.name_value_list = name_value_list;


        command = recv_control(fd);

        if (DEBUG(verb))
        {
            fprintf(stderr, "AUTH-PAM: BACKGROUND: received command code: %d\n", command);
        }

        switch (command)
        {
            case 128:
                if (recv_string(fd, up.username, sizeof(up.username)) == -1
                    || recv_string(fd, up.password, sizeof(up.password)) == -1
                    || recv_string(fd, up.common_name, sizeof(up.common_name)) == -1)
                {
                    fprintf(stderr, "AUTH-PAM: BACKGROUND: read error on command channel: code=%d, exiting\n",
                            command);
                    goto done;
                }

                if (DEBUG(verb))
                {




                    fprintf(stderr, "AUTH-PAM: BACKGROUND: USER: %s\n", up.username);

                }


                split_scrv1_password(&up);

                if (pam_auth(service, &up))
                {
                    if (send_control(fd, RESPONSE_VERIFY_SUCCEEDED) == -1)
                    {
                        fprintf(stderr, "AUTH-PAM: BACKGROUND: write error on response socket [2]\n");
                        goto done;
                    }
                }
                else
                {
                    if (send_control(fd, RESPONSE_VERIFY_FAILED) == -1)
                    {
                        fprintf(stderr, "AUTH-PAM: BACKGROUND: write error on response socket [3]\n");
                        goto done;
                    }
                }
                plugin_secure_memzero(up.password, sizeof(up.password));
                break;

            case 129:
                goto done;

            case -1:
                fprintf(stderr, "AUTH-PAM: BACKGROUND: read error on command channel\n");
                goto done;

            default:
                fprintf(stderr, "AUTH-PAM: BACKGROUND: unknown command code: code=%d, exiting\n",
                        command);
                goto done;
        }
        plugin_secure_memzero(up.response, sizeof(up.response));
    }
done:
    plugin_secure_memzero(up.password, sizeof(up.password));
    plugin_secure_memzero(up.response, sizeof(up.response));



    if (DEBUG(verb))
    {
        fprintf(stderr, "AUTH-PAM: BACKGROUND: EXIT\n");
    }

    return;
}
