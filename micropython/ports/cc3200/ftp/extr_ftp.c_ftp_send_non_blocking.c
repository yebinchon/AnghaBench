
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int16_t ;
typedef int ftp_result_t ;
typedef int _i16 ;
struct TYPE_2__ {scalar_t__ txRetries; } ;


 int E_FTP_RESULT_CONTINUE ;
 int E_FTP_RESULT_FAILED ;
 int E_FTP_RESULT_OK ;
 scalar_t__ FTP_TX_RETRIES_MAX ;
 scalar_t__ SL_EAGAIN ;
 TYPE_1__ ftp_data ;
 int ftp_reset () ;
 scalar_t__ sl_Send (int ,void*,int ,int ) ;

__attribute__((used)) static ftp_result_t ftp_send_non_blocking (_i16 sd, void *data, _i16 Len) {
    int16_t result = sl_Send(sd, data, Len, 0);

    if (result > 0) {
        ftp_data.txRetries = 0;
        return E_FTP_RESULT_OK;
    }
    else if ((FTP_TX_RETRIES_MAX >= ++ftp_data.txRetries) && (result == SL_EAGAIN)) {
        return E_FTP_RESULT_CONTINUE;
    }
    else {

        ftp_reset();
        return E_FTP_RESULT_FAILED;
    }
}
