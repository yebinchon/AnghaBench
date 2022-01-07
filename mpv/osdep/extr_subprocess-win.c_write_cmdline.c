
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int start; int member_0; } ;
typedef TYPE_1__ bstr ;


 int bstr0 (char*) ;
 int bstr_xappend (int *,TYPE_1__*,int ) ;
 int bstr_xappend_asprintf (int *,TYPE_1__*,char*,char*) ;
 int * mp_from_utf8 (void*,int ) ;
 int talloc_free (int ) ;
 int write_arg (TYPE_1__*,char*) ;

__attribute__((used)) static wchar_t *write_cmdline(void *ctx, char **argv)
{


    bstr cmdline = {0};
    bstr_xappend_asprintf(((void*)0), &cmdline, "\"%s\"", argv[0]);

    for (int i = 1; argv[i]; i++) {
        bstr_xappend(((void*)0), &cmdline, bstr0(" "));
        write_arg(&cmdline, argv[i]);
    }

    wchar_t *wcmdline = mp_from_utf8(ctx, cmdline.start);
    talloc_free(cmdline.start);
    return wcmdline;
}
