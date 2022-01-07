
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,char*) ;
 int ERR_print_errors (int ) ;
 char LIST_SEPARATOR_CHAR ;
 scalar_t__ RAND_load_file (char*,int) ;
 int bio_err ;

__attribute__((used)) static int loadfiles(char *name)
{
    char *p;
    int last, ret = 1;

    for ( ; ; ) {
        last = 0;
        for (p = name; *p != '\0' && *p != LIST_SEPARATOR_CHAR; p++)
            continue;
        if (*p == '\0')
            last = 1;
        *p = '\0';
        if (RAND_load_file(name, -1) < 0) {
            BIO_printf(bio_err, "Can't load %s into RNG\n", name);
            ERR_print_errors(bio_err);
            ret = 0;
        }
        if (last)
            break;
        name = p + 1;
        if (*name == '\0')
            break;
    }
    return ret;
}
