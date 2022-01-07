
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 scalar_t__ fflush (int ) ;
 int php_handle_aborted_connection () ;
 int stdout ;

__attribute__((used)) static void php_embed_flush(void *server_context)
{
 if (fflush(stdout)==EOF) {
  php_handle_aborted_connection();
 }
}
