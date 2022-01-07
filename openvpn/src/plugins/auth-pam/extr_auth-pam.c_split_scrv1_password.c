
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_pass {char* password; char* response; int verb; } ;


 scalar_t__ DEBUG (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int plugin_base64_decode (char*,char*,int) ;
 int plugin_secure_memzero (char*,int) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int const) ;

__attribute__((used)) static void
split_scrv1_password(struct user_pass *up)
{
    const int skip = strlen("SCRV1:");
    if (strncmp(up->password, "SCRV1:", skip) != 0)
    {
        return;
    }

    char *tmp = strdup(up->password);
    if (!tmp)
    {
        fprintf(stderr, "AUTH-PAM: out of memory parsing static challenge password\n");
        goto out;
    }

    char *pass = tmp + skip;
    char *resp = strchr(pass, ':');
    if (!resp)
    {
        goto out;
    }
    *resp++ = '\0';

    int n = plugin_base64_decode(pass, up->password, sizeof(up->password)-1);
    if (n >= 0)
    {
        up->password[n] = '\0';
        n = plugin_base64_decode(resp, up->response, sizeof(up->response)-1);
        if (n >= 0)
        {
            up->response[n] = '\0';
            if (DEBUG(up->verb))
            {
                fprintf(stderr, "AUTH-PAM: BACKGROUND: parsed static challenge password\n");
            }
            goto out;
        }
    }


    plugin_secure_memzero(up->password, sizeof(up->password));
    plugin_secure_memzero(up->response, sizeof(up->response));
    strcpy(up->password, tmp);

    fprintf(stderr, "AUTH-PAM: base64 decode error while parsing static challenge password\n");

out:
    if (tmp)
    {
        plugin_secure_memzero(tmp, strlen(tmp));
        free(tmp);
    }
}
