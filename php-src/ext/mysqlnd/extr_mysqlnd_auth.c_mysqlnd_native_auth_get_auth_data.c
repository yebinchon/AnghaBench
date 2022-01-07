
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_ulong ;
typedef int zend_uchar ;
struct st_mysqlnd_authentication_plugin {int dummy; } ;
struct TYPE_3__ {int error_info; } ;
typedef int MYSQLND_SESSION_OPTIONS ;
typedef int MYSQLND_PFC_DATA ;
typedef TYPE_1__ MYSQLND_CONN_DATA ;


 int CR_MALFORMED_PACKET ;
 int DBG_ENTER (char*) ;
 int DBG_ERR_FMT (char*,size_t const,size_t const) ;
 int DBG_RETURN (int *) ;
 size_t const SCRAMBLE_LENGTH ;
 int SET_CLIENT_ERROR (int ,int ,int ,char*) ;
 int UNKNOWN_SQLSTATE ;
 int * malloc (size_t const) ;
 int php_mysqlnd_scramble (int *,int *,int *,size_t const) ;

__attribute__((used)) static zend_uchar *
mysqlnd_native_auth_get_auth_data(struct st_mysqlnd_authentication_plugin * self,
          size_t * auth_data_len,
          MYSQLND_CONN_DATA * conn, const char * const user, const char * const passwd,
          const size_t passwd_len, zend_uchar * auth_plugin_data, const size_t auth_plugin_data_len,
          const MYSQLND_SESSION_OPTIONS * const session_options,
          const MYSQLND_PFC_DATA * const pfc_data,
          const zend_ulong mysql_flags
         )
{
 zend_uchar * ret = ((void*)0);
 DBG_ENTER("mysqlnd_native_auth_get_auth_data");
 *auth_data_len = 0;


 if (auth_plugin_data_len < SCRAMBLE_LENGTH) {

  SET_CLIENT_ERROR(conn->error_info, CR_MALFORMED_PACKET, UNKNOWN_SQLSTATE, "The server sent wrong length for scramble");
  DBG_ERR_FMT("The server sent wrong length for scramble %u. Expected %u", auth_plugin_data_len, SCRAMBLE_LENGTH);
  DBG_RETURN(((void*)0));
 }


 if (passwd && passwd_len) {
  ret = malloc(SCRAMBLE_LENGTH);
  *auth_data_len = SCRAMBLE_LENGTH;

  php_mysqlnd_scramble((zend_uchar*)ret, auth_plugin_data, (zend_uchar*)passwd, passwd_len);
 }
 DBG_RETURN(ret);
}
