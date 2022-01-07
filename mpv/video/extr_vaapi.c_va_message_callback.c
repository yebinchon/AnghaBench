
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vaapi_ctx {int log; } ;


 int mp_msg (int ,int,char*,char const*) ;

__attribute__((used)) static void va_message_callback(void *context, const char *msg, int mp_level)
{
    struct mp_vaapi_ctx *res = context;
    mp_msg(res->log, mp_level, "libva: %s", msg);
}
