
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void php_embed_log_message(char *message, int syslog_type_int)
{
 fprintf (stderr, "%s\n", message);
}
