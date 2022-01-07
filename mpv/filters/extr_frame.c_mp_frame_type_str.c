
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum mp_frame_type { ____Placeholder_mp_frame_type } mp_frame_type ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* frame_handlers ;

const char *mp_frame_type_str(enum mp_frame_type t)
{
    return frame_handlers[t].name;
}
