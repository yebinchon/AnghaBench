
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ass_state {TYPE_1__* track; } ;
struct TYPE_7__ {int Encoding; int Name; } ;
struct TYPE_6__ {TYPE_2__* styles; } ;
typedef TYPE_1__ ASS_Track ;
typedef TYPE_2__ ASS_Style ;


 int ass_alloc_style (TYPE_1__*) ;
 int find_style (TYPE_1__*,char*,int) ;
 int strdup (char*) ;

__attribute__((used)) static ASS_Style *get_style(struct ass_state *ass, char *name)
{
    ASS_Track *track = ass->track;
    if (!track)
        return ((void*)0);

    int sid = find_style(track, name, -1);
    if (sid >= 0)
        return &track->styles[sid];

    sid = ass_alloc_style(track);
    ASS_Style *style = &track->styles[sid];
    style->Name = strdup(name);

    style->Encoding = -1;
    return style;
}
