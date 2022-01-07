
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int modusocket_socket_delete (int) ;
 int sl_Close (int) ;

void servers_close_socket (int16_t *sd) {
    if (*sd > 0) {
        modusocket_socket_delete(*sd);
        sl_Close(*sd);
        *sd = -1;
    }
}
