
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_4__ {TYPE_2__ spaces; } ;
typedef TYPE_1__ RFlag ;


 int R_SPACE_EVENT_COUNT ;
 int R_SPACE_EVENT_UNSET ;
 int count_flags_in_space ;
 int r_event_hook (int ,int ,int ,int *) ;
 int r_spaces_init (TYPE_2__*,char*) ;
 int unset_flagspace ;

__attribute__((used)) static void new_spaces(RFlag *f) {
 r_spaces_init (&f->spaces, "fs");
 r_event_hook (f->spaces.event, R_SPACE_EVENT_COUNT, count_flags_in_space, ((void*)0));
 r_event_hook (f->spaces.event, R_SPACE_EVENT_UNSET, unset_flagspace, ((void*)0));
}
