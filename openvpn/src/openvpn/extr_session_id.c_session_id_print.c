
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_id {int id; } ;
struct gc_arena {int dummy; } ;


 int SID_SIZE ;
 char const* format_hex (int ,int ,int ,struct gc_arena*) ;

const char *
session_id_print(const struct session_id *sid, struct gc_arena *gc)
{
    return format_hex(sid->id, SID_SIZE, 0, gc);
}
