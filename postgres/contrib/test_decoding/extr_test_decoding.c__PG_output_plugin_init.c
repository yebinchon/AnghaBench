
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int message_cb; int shutdown_cb; int filter_by_origin_cb; int commit_cb; int truncate_cb; int change_cb; int begin_cb; int startup_cb; } ;
typedef TYPE_1__ OutputPluginCallbacks ;


 int AssertVariableIsOfType (void (*) (TYPE_1__*),int ) ;
 int LogicalOutputPluginInit ;
 int pg_decode_begin_txn ;
 int pg_decode_change ;
 int pg_decode_commit_txn ;
 int pg_decode_filter ;
 int pg_decode_message ;
 int pg_decode_shutdown ;
 int pg_decode_startup ;
 int pg_decode_truncate ;

void
_PG_output_plugin_init(OutputPluginCallbacks *cb)
{
 AssertVariableIsOfType(&_PG_output_plugin_init, LogicalOutputPluginInit);

 cb->startup_cb = pg_decode_startup;
 cb->begin_cb = pg_decode_begin_txn;
 cb->change_cb = pg_decode_change;
 cb->truncate_cb = pg_decode_truncate;
 cb->commit_cb = pg_decode_commit_txn;
 cb->filter_by_origin_cb = pg_decode_filter;
 cb->shutdown_cb = pg_decode_shutdown;
 cb->message_cb = pg_decode_message;
}
