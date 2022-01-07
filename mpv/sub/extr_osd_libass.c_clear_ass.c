
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ass_state {scalar_t__ track; } ;


 int ass_flush_events (scalar_t__) ;

__attribute__((used)) static void clear_ass(struct ass_state *ass)
{
    if (ass->track)
        ass_flush_events(ass->track);
}
