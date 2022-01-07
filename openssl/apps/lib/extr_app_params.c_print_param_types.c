
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int BIO_printf (int ,char*,int,char*,char const*) ;
 int bio_out ;
 int describe_param_type (char*,int,TYPE_1__ const*) ;

int print_param_types(const char *thing, const OSSL_PARAM *pdefs, int indent)
{
    if (pdefs == ((void*)0)) {
        BIO_printf(bio_out, "%*sNo declared %s\n", indent, "", thing);
    } else if (pdefs->key == ((void*)0)) {




        BIO_printf(bio_out, "%*sEmpty list of %s (!!!)\n", indent, "", thing);
    } else {
        BIO_printf(bio_out, "%*s%s:\n", indent, "", thing);
        for (; pdefs->key != ((void*)0); pdefs++) {
            char buf[200];

            describe_param_type(buf, sizeof(buf), pdefs);
            BIO_printf(bio_out, "%*s  %s\n", indent, "", buf);
        }
    }
    return 1;
}
