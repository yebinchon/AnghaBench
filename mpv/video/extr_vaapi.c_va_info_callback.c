
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSGL_V ;
 int va_message_callback (void*,char const*,int ) ;

__attribute__((used)) static void va_info_callback(void *context, const char *msg)
{
    va_message_callback(context, msg, MSGL_V);
}
