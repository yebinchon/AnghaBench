
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct config_generic {char* name; } ;
struct TYPE_11__ {scalar_t__ format; int settings; } ;
struct TYPE_10__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainCloseGroup (char*,char*,int,TYPE_2__*) ;
 int ExplainOpenGroup (char*,char*,int,TYPE_2__*) ;
 int ExplainPropertyText (char*,char*,TYPE_2__*) ;
 char* GetConfigOptionByName (char*,int *,int) ;
 int appendStringInfo (TYPE_1__*,char*,char*,...) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 struct config_generic** get_explain_guc_options (int*) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static void
ExplainPrintSettings(ExplainState *es)
{
 int num;
 struct config_generic **gucs;


 if (!es->settings)
  return;


 gucs = get_explain_guc_options(&num);


 if (!num)
  return;

 if (es->format != EXPLAIN_FORMAT_TEXT)
 {
  int i;

  ExplainOpenGroup("Settings", "Settings", 1, es);

  for (i = 0; i < num; i++)
  {
   char *setting;
   struct config_generic *conf = gucs[i];

   setting = GetConfigOptionByName(conf->name, ((void*)0), 1);

   ExplainPropertyText(conf->name, setting, es);
  }

  ExplainCloseGroup("Settings", "Settings", 1, es);
 }
 else
 {
  int i;
  StringInfoData str;

  initStringInfo(&str);

  for (i = 0; i < num; i++)
  {
   char *setting;
   struct config_generic *conf = gucs[i];

   if (i > 0)
    appendStringInfoString(&str, ", ");

   setting = GetConfigOptionByName(conf->name, ((void*)0), 1);

   if (setting)
    appendStringInfo(&str, "%s = '%s'", conf->name, setting);
   else
    appendStringInfo(&str, "%s = NULL", conf->name);
  }

  if (num > 0)
   ExplainPropertyText("Settings", str.data, es);
 }
}
