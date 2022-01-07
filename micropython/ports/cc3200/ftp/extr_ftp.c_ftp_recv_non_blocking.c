
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftp_result_t ;
typedef scalar_t__ _i32 ;
typedef int _i16 ;


 int E_FTP_RESULT_CONTINUE ;
 int E_FTP_RESULT_FAILED ;
 int E_FTP_RESULT_OK ;
 scalar_t__ SL_EAGAIN ;
 scalar_t__ sl_Recv (int ,void*,int ,int ) ;

__attribute__((used)) static ftp_result_t ftp_recv_non_blocking (_i16 sd, void *buff, _i16 Maxlen, _i32 *rxLen) {
    *rxLen = sl_Recv(sd, buff, Maxlen, 0);

    if (*rxLen > 0) {
        return E_FTP_RESULT_OK;
    }
    else if (*rxLen != SL_EAGAIN) {

        return E_FTP_RESULT_FAILED;
    }
    return E_FTP_RESULT_CONTINUE;
}
