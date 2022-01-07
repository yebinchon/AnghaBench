
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shutdown_cb; int filter_by_origin_cb; int commit_cb; int truncate_cb; int change_cb; int begin_cb; int startup_cb; } ;
typedef TYPE_1__ OutputPluginCallbacks ;


 int AssertVariableIsOfType (void (*) (TYPE_1__*),int ) ;
 int LogicalOutputPluginInit ;
 int pgoutput_begin_txn ;
 int pgoutput_change ;
 int pgoutput_commit_txn ;
 int pgoutput_origin_filter ;
 int pgoutput_shutdown ;
 int pgoutput_startup ;
 int pgoutput_truncate ;

void
_PG_output_plugin_init(OutputPluginCallbacks *cb)
{
 AssertVariableIsOfType(&_PG_output_plugin_init, LogicalOutputPluginInit);

 cb->startup_cb = pgoutput_startup;
 cb->begin_cb = pgoutput_begin_txn;
 cb->change_cb = pgoutput_change;
 cb->truncate_cb = pgoutput_truncate;
 cb->commit_cb = pgoutput_commit_txn;
 cb->filter_by_origin_cb = pgoutput_origin_filter;
 cb->shutdown_cb = pgoutput_shutdown;
}
