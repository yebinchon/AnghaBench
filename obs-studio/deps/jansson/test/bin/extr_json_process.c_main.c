
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strip; int use_env; } ;


 int LC_ALL ;
 TYPE_1__ conf ;
 int fprintf (int ,char*,...) ;
 int setlocale (int ,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int use_conf (char*) ;
 int use_env () ;

int main(int argc, char *argv[])
{
    int i;
    char *test_path = ((void*)0);





    if (argc < 2) {
        goto usage;
    }

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--strip"))
            conf.strip = 1;
        else if (!strcmp(argv[i], "--env"))
            conf.use_env = 1;
        else
            test_path = argv[i];
    }

    if (conf.use_env)
        return use_env();
    else
    {
        if (!test_path)
            goto usage;

        return use_conf(test_path);
    }

usage:
    fprintf(stderr, "argc =%d\n", argc);
    fprintf(stderr, "usage: %s [--strip] [--env] test_dir\n", argv[0]);
    return 2;
}
