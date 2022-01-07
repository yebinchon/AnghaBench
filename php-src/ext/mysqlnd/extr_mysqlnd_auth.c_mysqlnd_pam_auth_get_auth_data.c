
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef int zend_uchar ;
struct st_mysqlnd_authentication_plugin {int dummy; } ;
typedef int MYSQLND_SESSION_OPTIONS ;
typedef int MYSQLND_PFC_DATA ;
typedef int MYSQLND_CONN_DATA ;


 scalar_t__ zend_strndup (char const* const,size_t const) ;

__attribute__((used)) static zend_uchar *
mysqlnd_pam_auth_get_auth_data(struct st_mysqlnd_authentication_plugin * self,
          size_t * auth_data_len,
          MYSQLND_CONN_DATA * conn, const char * const user, const char * const passwd,
          const size_t passwd_len, zend_uchar * auth_plugin_data, const size_t auth_plugin_data_len,
          const MYSQLND_SESSION_OPTIONS * const session_options,
          const MYSQLND_PFC_DATA * const pfc_data,
          const zend_ulong mysql_flags
         )
{
 zend_uchar * ret = ((void*)0);


 if (passwd && passwd_len) {
  ret = (zend_uchar*) zend_strndup(passwd, passwd_len);
 }
 *auth_data_len = passwd_len;

 return ret;
}
