
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MYSQLND_PFC ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,unsigned int const) ;
 int DBG_RETURN (void*) ;
 unsigned int const mysqlnd_plugin_count () ;

__attribute__((used)) static void **
mysqlnd_plugin__get_plugin_pfc_data(const MYSQLND_PFC * pfc, const unsigned int plugin_id)
{
 DBG_ENTER("mysqlnd_plugin__get_plugin_pfc_data");
 DBG_INF_FMT("plugin_id=%u", plugin_id);
 if (!pfc || plugin_id >= mysqlnd_plugin_count()) {
  return ((void*)0);
 }
 DBG_RETURN((void *)((char *)pfc + sizeof(MYSQLND_PFC) + plugin_id * sizeof(void *)));
}
