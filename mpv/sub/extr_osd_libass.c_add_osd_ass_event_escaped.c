
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int member_0; } ;
typedef TYPE_1__ bstr ;
typedef int ASS_Track ;
typedef int ASS_Event ;


 int * add_osd_ass_event (int *,char const*,int ) ;
 int mangle_ass (TYPE_1__*,char const*) ;
 int talloc_free (int ) ;

__attribute__((used)) static ASS_Event *add_osd_ass_event_escaped(ASS_Track *track, const char *style,
                                            const char *text)
{
    bstr buf = {0};
    mangle_ass(&buf, text);
    ASS_Event *e = add_osd_ass_event(track, style, buf.start);
    talloc_free(buf.start);
    return e;
}
