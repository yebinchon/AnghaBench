
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int telnet_connected_substate_t ;
typedef int _i16 ;
struct TYPE_3__ {int connected; } ;
struct TYPE_4__ {TYPE_1__ substate; } ;


 scalar_t__ E_TELNET_RESULT_OK ;
 TYPE_2__ telnet_data ;
 scalar_t__ telnet_send_non_blocking (void*,int ) ;

__attribute__((used)) static void telnet_send_and_proceed (void *data, _i16 Len, telnet_connected_substate_t next_state) {
    if (E_TELNET_RESULT_OK == telnet_send_non_blocking(data, Len)) {
        telnet_data.substate.connected = next_state;
    }
}
