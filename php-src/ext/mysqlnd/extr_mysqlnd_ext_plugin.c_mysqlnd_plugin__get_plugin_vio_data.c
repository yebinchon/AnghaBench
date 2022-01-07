
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MYSQLND_VIO ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,unsigned int const) ;
 int DBG_RETURN (void*) ;
 unsigned int const mysqlnd_plugin_count () ;

__attribute__((used)) static void **
mysqlnd_plugin__get_plugin_vio_data(const MYSQLND_VIO * vio, const unsigned int plugin_id)
{
 DBG_ENTER("_mysqlnd_plugin__get_plugin_vio_data");
 DBG_INF_FMT("plugin_id=%u", plugin_id);
 if (!vio || plugin_id >= mysqlnd_plugin_count()) {
  return ((void*)0);
 }
 DBG_RETURN((void *)((char *)vio + sizeof(MYSQLND_VIO) + plugin_id * sizeof(void *)));
}
