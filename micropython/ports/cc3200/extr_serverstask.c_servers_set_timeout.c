
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ timeout; } ;


 scalar_t__ SERVERS_MIN_TIMEOUT_MS ;
 int mp_raise_ValueError (int ) ;
 int mpexception_value_invalid_arguments ;
 TYPE_1__ servers_data ;

void servers_set_timeout (uint32_t timeout) {
    if (timeout < SERVERS_MIN_TIMEOUT_MS) {

        mp_raise_ValueError(mpexception_value_invalid_arguments);
    }
    servers_data.timeout = timeout;
}
