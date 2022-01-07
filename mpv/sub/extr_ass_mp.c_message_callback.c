
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct mp_log {int dummy; } ;


 int* map_ass_level ;
 int mp_msg (struct mp_log*,int,char*) ;
 int mp_msg_va (struct mp_log*,int,char const*,int ) ;

__attribute__((used)) static void message_callback(int level, const char *format, va_list va, void *ctx)
{
    struct mp_log *log = ctx;
    if (!log)
        return;
    level = map_ass_level[level];
    mp_msg_va(log, level, format, va);

    mp_msg(log, level, "\n");
}
