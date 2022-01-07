
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int settable_ctx_params; int gettable_ctx_params; int gettable_params; } ;
struct TYPE_6__ {int verbose; scalar_t__ first; int subindent; int label; int indent; int total; } ;
typedef TYPE_1__ META ;
typedef TYPE_2__ INFO ;


 int BIO_printf (int ,char*,...) ;
 int bio_out ;
 int print_method_names (int ,TYPE_2__*) ;
 int print_param_types (char*,int ,int ) ;

__attribute__((used)) static void print_caps(META *meta, INFO *info)
{
    switch (meta->verbose) {
    case 1:
        if (!meta->first)
            BIO_printf(bio_out, "; ");
        print_method_names(bio_out, info);
        break;
    case 2:
        if (meta->first) {
            if (meta->total > 0)
                BIO_printf(bio_out, "\n");
            BIO_printf(bio_out, "%*s%ss:", meta->indent, "", meta->label);
        }
        BIO_printf(bio_out, " ");
        print_method_names(bio_out, info);
        break;
    case 3:
    default:
        BIO_printf(bio_out, "%*s%s ", meta->indent, "", meta->label);
        print_method_names(bio_out, info);
        BIO_printf(bio_out, "\n");
        print_param_types("retrievable algorithm parameters",
                          info->gettable_params, meta->subindent);
        print_param_types("retrievable operation parameters",
                          info->gettable_ctx_params, meta->subindent);
        print_param_types("settable operation parameters",
                          info->settable_ctx_params, meta->subindent);
        break;
    }
    meta->first = 0;
}
