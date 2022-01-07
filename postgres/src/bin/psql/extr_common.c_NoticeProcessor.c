
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_log_info (char*,char const*) ;

void
NoticeProcessor(void *arg, const char *message)
{
 (void) arg;
 pg_log_info("%s", message);
}
