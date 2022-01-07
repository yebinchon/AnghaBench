
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Duration; int ReadOrder; int * Text; int Style; scalar_t__ Start; } ;
struct TYPE_7__ {TYPE_2__* events; } ;
typedef TYPE_1__ ASS_Track ;
typedef TYPE_2__ ASS_Event ;


 int ass_alloc_event (TYPE_1__*) ;
 int assert (int ) ;
 int find_style (TYPE_1__*,char const*,int ) ;
 int * strdup (char const*) ;

__attribute__((used)) static ASS_Event *add_osd_ass_event(ASS_Track *track, const char *style,
                                    const char *text)
{
    int n = ass_alloc_event(track);
    ASS_Event *event = track->events + n;
    event->Start = 0;
    event->Duration = 100;
    event->Style = find_style(track, style, 0);
    event->ReadOrder = n;
    assert(event->Text == ((void*)0));
    if (text)
        event->Text = strdup(text);
    return event;
}
