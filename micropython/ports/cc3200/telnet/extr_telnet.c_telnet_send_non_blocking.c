
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int telnet_result_t ;
typedef scalar_t__ int16_t ;
typedef int _i16 ;
struct TYPE_2__ {scalar_t__ txRetries; int n_sd; } ;


 int E_TELNET_RESULT_AGAIN ;
 int E_TELNET_RESULT_FAILED ;
 int E_TELNET_RESULT_OK ;
 scalar_t__ SL_EAGAIN ;
 scalar_t__ TELNET_TX_RETRIES_MAX ;
 scalar_t__ sl_Send (int ,void*,int ,int ) ;
 TYPE_1__ telnet_data ;
 int telnet_reset () ;

__attribute__((used)) static telnet_result_t telnet_send_non_blocking (void *data, _i16 Len) {
    int16_t result = sl_Send(telnet_data.n_sd, data, Len, 0);

    if (result > 0) {
        telnet_data.txRetries = 0;
        return E_TELNET_RESULT_OK;
    }
    else if ((TELNET_TX_RETRIES_MAX >= ++telnet_data.txRetries) && (result == SL_EAGAIN)) {
        return E_TELNET_RESULT_AGAIN;
    }
    else {

        telnet_reset();
        return E_TELNET_RESULT_FAILED;
    }
}
