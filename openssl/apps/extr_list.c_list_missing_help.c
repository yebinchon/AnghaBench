
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ func; int * name; TYPE_1__* help; } ;
struct TYPE_4__ {int * name; int * helpstr; } ;
typedef TYPE_1__ OPTIONS ;
typedef TYPE_2__ FUNCTION ;


 int BIO_printf (int ,char*,int *,...) ;
 int bio_out ;
 scalar_t__ dgst_main ;
 TYPE_2__* functions ;

__attribute__((used)) static void list_missing_help(void)
{
    const FUNCTION *fp;
    const OPTIONS *o;

    for (fp = functions; fp->name != ((void*)0); fp++) {
        if ((o = fp->help) != ((void*)0)) {

            for ( ; o->name != ((void*)0); o++) {
                if (o->helpstr == ((void*)0))
                    BIO_printf(bio_out, "%s %s\n", fp->name, o->name);
            }
        } else if (fp->func != dgst_main) {

            BIO_printf(bio_out, "%s *\n", fp->name);
        }
    }
}
