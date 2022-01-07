
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int ERR_print_errors_fp (int ) ;
 int NCONF_default () ;
 scalar_t__ NCONF_load (int *,char*,long*) ;
 int * NCONF_new (int ) ;
 int collect_all_sections (int *) ;
 int dump_section (int ,int *) ;
 int section_names ;
 int sk_OPENSSL_CSTRING_free (int ) ;
 int sk_OPENSSL_CSTRING_num (int ) ;
 int sk_OPENSSL_CSTRING_value (int ,int) ;
 int stderr ;

int main(int argc, char **argv)
{
    long eline;
    CONF *conf;

    if ((conf = NCONF_new(NCONF_default())) != ((void*)0)
        && NCONF_load(conf, argv[1], &eline)) {
        int i;

        collect_all_sections(conf);
        for (i = 0; i < sk_OPENSSL_CSTRING_num(section_names); i++) {
            dump_section(sk_OPENSSL_CSTRING_value(section_names, i), conf);
        }
        sk_OPENSSL_CSTRING_free(section_names);
    } else {
        ERR_print_errors_fp(stderr);
        return 1;
    }
    return 0;
}
