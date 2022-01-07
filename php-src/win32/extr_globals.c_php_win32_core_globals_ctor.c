
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_source; int mail_socket; } ;
typedef TYPE_1__ php_win32_core_globals ;


 int INVALID_HANDLE_VALUE ;
 int INVALID_SOCKET ;
 int memset (TYPE_1__*,int ,int) ;

void php_win32_core_globals_ctor(void *vg)
{
 php_win32_core_globals *wg = (php_win32_core_globals*)vg;
 memset(wg, 0, sizeof(*wg));

 wg->mail_socket = INVALID_SOCKET;

 wg->log_source = INVALID_HANDLE_VALUE;
}
