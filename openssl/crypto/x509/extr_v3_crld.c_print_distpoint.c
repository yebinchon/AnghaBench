
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int entries; } ;
typedef TYPE_2__ X509_NAME ;
struct TYPE_6__ {int relativename; int fullname; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ name; } ;
typedef TYPE_3__ DIST_POINT_NAME ;
typedef int BIO ;


 int BIO_printf (int *,char*,int,char*,...) ;
 int BIO_puts (int *,char*) ;
 int X509_NAME_print_ex (int *,TYPE_2__*,int ,int ) ;
 int XN_FLAG_ONELINE ;
 int print_gens (int *,int ,int) ;

__attribute__((used)) static int print_distpoint(BIO *out, DIST_POINT_NAME *dpn, int indent)
{
    if (dpn->type == 0) {
        BIO_printf(out, "%*sFull Name:\n", indent, "");
        print_gens(out, dpn->name.fullname, indent);
    } else {
        X509_NAME ntmp;
        ntmp.entries = dpn->name.relativename;
        BIO_printf(out, "%*sRelative Name:\n%*s", indent, "", indent + 2, "");
        X509_NAME_print_ex(out, &ntmp, 0, XN_FLAG_ONELINE);
        BIO_puts(out, "\n");
    }
    return 1;
}
