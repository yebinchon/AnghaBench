
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mail_socket; int * registry_directories; int * registry_event; int * registry_key; } ;
typedef TYPE_1__ php_win32_core_globals ;


 int CloseHandle (int *) ;
 scalar_t__ INVALID_SOCKET ;
 int RegCloseKey (int *) ;
 int closesocket (scalar_t__) ;
 int free (int *) ;
 int zend_hash_destroy (int *) ;

void php_win32_core_globals_dtor(void *vg)
{
 php_win32_core_globals *wg = (php_win32_core_globals*)vg;

 if (wg->registry_key) {
  RegCloseKey(wg->registry_key);
  wg->registry_key = ((void*)0);
 }
 if (wg->registry_event) {
  CloseHandle(wg->registry_event);
  wg->registry_event = ((void*)0);
 }
 if (wg->registry_directories) {
  zend_hash_destroy(wg->registry_directories);
  free(wg->registry_directories);
  wg->registry_directories = ((void*)0);
 }

 if (INVALID_SOCKET != wg->mail_socket) {
  closesocket(wg->mail_socket);
  wg->mail_socket = INVALID_SOCKET;
 }
}
