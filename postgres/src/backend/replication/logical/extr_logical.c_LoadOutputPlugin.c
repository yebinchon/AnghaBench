
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * commit_cb; int * change_cb; int * begin_cb; } ;
typedef TYPE_1__ OutputPluginCallbacks ;
typedef int (* LogicalOutputPluginInit ) (TYPE_1__*) ;


 int ERROR ;
 int elog (int ,char*) ;
 scalar_t__ load_external_function (char*,char*,int,int *) ;

__attribute__((used)) static void
LoadOutputPlugin(OutputPluginCallbacks *callbacks, char *plugin)
{
 LogicalOutputPluginInit plugin_init;

 plugin_init = (LogicalOutputPluginInit)
  load_external_function(plugin, "_PG_output_plugin_init", 0, ((void*)0));

 if (plugin_init == ((void*)0))
  elog(ERROR, "output plugins have to declare the _PG_output_plugin_init symbol");


 plugin_init(callbacks);

 if (callbacks->begin_cb == ((void*)0))
  elog(ERROR, "output plugins have to register a begin callback");
 if (callbacks->change_cb == ((void*)0))
  elog(ERROR, "output plugins have to register a change callback");
 if (callbacks->commit_cb == ((void*)0))
  elog(ERROR, "output plugins have to register a commit callback");
}
