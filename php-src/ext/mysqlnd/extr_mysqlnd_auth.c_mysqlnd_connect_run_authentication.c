
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef scalar_t__ enum_func_status ;
typedef int MYSQLND_STRING ;
typedef int MYSQLND_SESSION_OPTIONS ;
typedef int MYSQLND_CONN_DATA ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 int FALSE ;
 scalar_t__ PASS ;
 scalar_t__ mysqlnd_run_authentication (int * const,char const* const,char const* const,size_t const,char const* const,size_t const,int const,char const* const,unsigned int const,int const* const,int const,int ,int ) ;
 scalar_t__ mysqlnd_switch_to_ssl_if_needed (int * const,unsigned int const,size_t const,int const* const,int const) ;

enum_func_status
mysqlnd_connect_run_authentication(
   MYSQLND_CONN_DATA * const conn,
   const char * const user,
   const char * const passwd,
   const char * const db,
   const size_t db_len,
   const size_t passwd_len,
   const MYSQLND_STRING authentication_plugin_data,
   const char * const authentication_protocol,
   const unsigned int charset_no,
   const size_t server_capabilities,
   const MYSQLND_SESSION_OPTIONS * const session_options,
   const zend_ulong mysql_flags
   )
{
 enum_func_status ret = FAIL;
 DBG_ENTER("mysqlnd_connect_run_authentication");

 ret = mysqlnd_switch_to_ssl_if_needed(conn, charset_no, server_capabilities, session_options, mysql_flags);
 if (PASS == ret) {
  ret = mysqlnd_run_authentication(conn, user, passwd, passwd_len, db, db_len,
           authentication_plugin_data, authentication_protocol,
           charset_no, session_options, mysql_flags, FALSE , FALSE );
 }
 DBG_RETURN(ret);
}
