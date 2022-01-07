
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_trigger_command_tag_check_result ;


 int EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED ;
 int EVENT_TRIGGER_COMMAND_TAG_OK ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;

__attribute__((used)) static event_trigger_command_tag_check_result
check_table_rewrite_ddl_tag(const char *tag)
{
 if (pg_strcasecmp(tag, "ALTER TABLE") == 0 ||
  pg_strcasecmp(tag, "ALTER TYPE") == 0)
  return EVENT_TRIGGER_COMMAND_TAG_OK;

 return EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED;
}
