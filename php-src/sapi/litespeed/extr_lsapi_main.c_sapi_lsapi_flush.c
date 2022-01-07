
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_Flush () ;
 scalar_t__ lsapi_mode ;
 int php_handle_aborted_connection () ;

__attribute__((used)) static void sapi_lsapi_flush(void * server_context)
{
    if ( lsapi_mode ) {
        if ( LSAPI_Flush() == -1) {
            php_handle_aborted_connection();
        }
    }
}
