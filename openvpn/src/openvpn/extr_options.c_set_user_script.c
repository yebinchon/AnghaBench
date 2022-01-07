
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int user_script_used; int * chroot_dir; } ;
typedef int script_name ;


 int M_USAGE ;
 int M_WARN ;
 scalar_t__ check_cmd_access (char const*,char*,int *) ;
 int msg (int ,char*,...) ;
 int openvpn_snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void
set_user_script(struct options *options,
                const char **script,
                const char *new_script,
                const char *type,
                bool in_chroot)
{
    if (*script)
    {
        msg(M_WARN, "Multiple --%s scripts defined.  "
            "The previously configured script is overridden.", type);
    }
    *script = new_script;
    options->user_script_used = 1;


    {
        char script_name[100];
        openvpn_snprintf(script_name, sizeof(script_name),
                         "--%s script", type);

        if (check_cmd_access(*script, script_name, (in_chroot ? options->chroot_dir : ((void*)0))))
        {
            msg(M_USAGE, "Please correct this error.");
        }

    }

}
