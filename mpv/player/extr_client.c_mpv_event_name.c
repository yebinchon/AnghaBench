
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mpv_event_id ;


 unsigned int MP_ARRAY_SIZE (char const**) ;
 char const** event_table ;

const char *mpv_event_name(mpv_event_id event)
{
    if ((unsigned)event >= MP_ARRAY_SIZE(event_table))
        return ((void*)0);
    return event_table[event];
}
