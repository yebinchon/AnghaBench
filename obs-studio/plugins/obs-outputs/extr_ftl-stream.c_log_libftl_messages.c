
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftl_log_severity_t ;


 int LOG_WARNING ;
 int UNUSED_PARAMETER (int ) ;
 int blog (int ,char*,char const*) ;

__attribute__((used)) static void log_libftl_messages(ftl_log_severity_t log_level,
    const char *message)
{
 UNUSED_PARAMETER(log_level);
 blog(LOG_WARNING, "[libftl] %s", message);
}
