
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftp_result_t ;
typedef scalar_t__ _i16 ;
typedef int SlSocklen_t ;
typedef int SlSockAddr_t ;
typedef int SlSockAddrIn_t ;


 int E_FTP_RESULT_CONTINUE ;
 int E_FTP_RESULT_FAILED ;
 int E_FTP_RESULT_OK ;
 scalar_t__ SL_EAGAIN ;
 int ftp_reset () ;
 int modusocket_socket_add (scalar_t__,int) ;
 scalar_t__ sl_Accept (scalar_t__,int *,int *) ;

__attribute__((used)) static ftp_result_t ftp_wait_for_connection (_i16 l_sd, _i16 *n_sd) {
    SlSockAddrIn_t sClientAddress;
    SlSocklen_t in_addrSize;


    *n_sd = sl_Accept(l_sd, (SlSockAddr_t *)&sClientAddress, (SlSocklen_t *)&in_addrSize);
    _i16 _sd = *n_sd;
    if (_sd == SL_EAGAIN) {
        return E_FTP_RESULT_CONTINUE;
    }
    else if (_sd < 0) {

        ftp_reset();
        return E_FTP_RESULT_FAILED;
    }


    modusocket_socket_add(_sd, 0);


    return E_FTP_RESULT_OK;
}
