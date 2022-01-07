
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {scalar_t__* argv; } ;


 int CHKACC_FILE ;
 int M_NOPREFIX ;
 int M_OPTERR ;
 int X_OK ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,char const*) ;
 int argv_reset (struct argv*) ;
 int check_file_access_chroot (char const*,int ,scalar_t__,int ,char const*) ;
 int msg (int,char*,char const*,char const*) ;

__attribute__((used)) static bool
check_cmd_access(const char *command, const char *opt, const char *chroot)
{
    struct argv argv;
    bool return_code;


    if (!command)
    {
        return 0;
    }


    argv = argv_new();
    argv_parse_cmd(&argv, command);


    if (argv.argv[0])
    {




        return_code = check_file_access_chroot(chroot, CHKACC_FILE, argv.argv[0], X_OK, opt);
    }
    else
    {
        msg(M_NOPREFIX|M_OPTERR, "%s fails with '%s': No path to executable.",
            opt, command);
        return_code = 1;
    }

    argv_reset(&argv);

    return return_code;
}
