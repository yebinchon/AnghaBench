
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_LOG_INFO ;
 int pg_log_generic (int ,char*,char const*) ;

__attribute__((used)) static void
notice_processor(void *arg, const char *message)
{
 pg_log_generic(PG_LOG_INFO, "%s", message);
}
