
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t zend_ulong ;
typedef int enum_func_status ;
struct TYPE_12__ {unsigned int nr; } ;
struct TYPE_11__ {TYPE_1__* command; } ;
struct TYPE_10__ {scalar_t__ charset_name; } ;
struct TYPE_9__ {int (* enable_ssl ) (TYPE_3__* const,size_t const,size_t const,unsigned int) ;} ;
typedef TYPE_2__ MYSQLND_SESSION_OPTIONS ;
typedef TYPE_3__ MYSQLND_CONN_DATA ;
typedef TYPE_4__ MYSQLND_CHARSET ;


 int DBG_ENTER (char*) ;
 int DBG_RETURN (int ) ;
 int FAIL ;
 TYPE_4__* mysqlnd_find_charset_name (scalar_t__) ;
 int stub1 (TYPE_3__* const,size_t const,size_t const,unsigned int) ;

__attribute__((used)) static enum_func_status
mysqlnd_switch_to_ssl_if_needed(MYSQLND_CONN_DATA * const conn,
        unsigned int charset_no,
        const size_t server_capabilities,
        const MYSQLND_SESSION_OPTIONS * const session_options,
        const zend_ulong mysql_flags)
{
 enum_func_status ret = FAIL;
 const MYSQLND_CHARSET * charset;
 DBG_ENTER("mysqlnd_switch_to_ssl_if_needed");

 if (session_options->charset_name && (charset = mysqlnd_find_charset_name(session_options->charset_name))) {
  charset_no = charset->nr;
 }

 {
  const size_t client_capabilities = mysql_flags;
  ret = conn->command->enable_ssl(conn, client_capabilities, server_capabilities, charset_no);
 }
 DBG_RETURN(ret);
}
