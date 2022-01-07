
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZLOG_NOTICE ;
 int zlog_msg (int ,char*,char*) ;

__attribute__((used)) static void sapi_cgi_log_message(char *message, int syslog_type_int)
{
 zlog_msg(ZLOG_NOTICE, "PHP message: ", message);
}
