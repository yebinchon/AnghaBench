
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* obtypename; int supported; } ;
typedef TYPE_1__ event_trigger_support_data ;
typedef int event_trigger_command_tag_check_result ;


 int EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED ;
 int EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED ;
 int EVENT_TRIGGER_COMMAND_TAG_OK ;
 TYPE_1__* event_trigger_support ;
 scalar_t__ pg_strcasecmp (char const*,char const*) ;
 scalar_t__ pg_strncasecmp (char const*,char*,int) ;

__attribute__((used)) static event_trigger_command_tag_check_result
check_ddl_tag(const char *tag)
{
 const char *obtypename;
 const event_trigger_support_data *etsd;




 if (pg_strcasecmp(tag, "CREATE TABLE AS") == 0 ||
  pg_strcasecmp(tag, "SELECT INTO") == 0 ||
  pg_strcasecmp(tag, "REFRESH MATERIALIZED VIEW") == 0 ||
  pg_strcasecmp(tag, "ALTER DEFAULT PRIVILEGES") == 0 ||
  pg_strcasecmp(tag, "ALTER LARGE OBJECT") == 0 ||
  pg_strcasecmp(tag, "COMMENT") == 0 ||
  pg_strcasecmp(tag, "GRANT") == 0 ||
  pg_strcasecmp(tag, "REVOKE") == 0 ||
  pg_strcasecmp(tag, "DROP OWNED") == 0 ||
  pg_strcasecmp(tag, "IMPORT FOREIGN SCHEMA") == 0 ||
  pg_strcasecmp(tag, "SECURITY LABEL") == 0)
  return EVENT_TRIGGER_COMMAND_TAG_OK;




 if (pg_strncasecmp(tag, "CREATE ", 7) == 0)
  obtypename = tag + 7;
 else if (pg_strncasecmp(tag, "ALTER ", 6) == 0)
  obtypename = tag + 6;
 else if (pg_strncasecmp(tag, "DROP ", 5) == 0)
  obtypename = tag + 5;
 else
  return EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED;




 for (etsd = event_trigger_support; etsd->obtypename != ((void*)0); etsd++)
  if (pg_strcasecmp(etsd->obtypename, obtypename) == 0)
   break;
 if (etsd->obtypename == ((void*)0))
  return EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED;
 if (!etsd->supported)
  return EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED;
 return EVENT_TRIGGER_COMMAND_TAG_OK;
}
