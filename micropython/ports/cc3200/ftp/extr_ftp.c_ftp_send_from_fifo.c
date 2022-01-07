
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ _i16 ;
struct TYPE_6__ {scalar_t__ d_sd; scalar_t__ ld_sd; scalar_t__ state; int special_file; int substate; } ;
struct TYPE_5__ {scalar_t__* sd; scalar_t__ closesockets; int data; scalar_t__ freedata; int datasize; } ;
typedef TYPE_1__ SocketFifoElement_t ;


 scalar_t__ E_FTP_CLOSE_CMD_AND_DATA ;
 scalar_t__ E_FTP_CLOSE_NONE ;
 scalar_t__ E_FTP_RESULT_OK ;
 scalar_t__ E_FTP_STE_END_TRANSFER ;
 int E_FTP_STE_SUB_DISCONNECTED ;
 scalar_t__ SOCKETFIFO_Peek (TYPE_1__*) ;
 int SOCKETFIFO_Pop (TYPE_1__*) ;
 int ftp_close_filesystem_on_error () ;
 TYPE_2__ ftp_data ;
 scalar_t__ ftp_send_non_blocking (scalar_t__,int ,int ) ;
 int mem_Free (int ) ;
 int servers_close_socket (scalar_t__*) ;

__attribute__((used)) static void ftp_send_from_fifo (void) {
    SocketFifoElement_t fifoelement;
    if (SOCKETFIFO_Peek (&fifoelement)) {
        _i16 _sd = *fifoelement.sd;
        if (_sd > 0) {
            if (E_FTP_RESULT_OK == ftp_send_non_blocking (_sd, fifoelement.data, fifoelement.datasize)) {
                SOCKETFIFO_Pop (&fifoelement);
                if (fifoelement.closesockets != E_FTP_CLOSE_NONE) {
                    servers_close_socket(&ftp_data.d_sd);
                    if (fifoelement.closesockets == E_FTP_CLOSE_CMD_AND_DATA) {
                        servers_close_socket(&ftp_data.ld_sd);

                        servers_close_socket(fifoelement.sd);
                        ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
                    }
                    ftp_close_filesystem_on_error();
                }
                if (fifoelement.freedata) {
                    mem_Free(fifoelement.data);
                }
            }
        }

        else {
            SOCKETFIFO_Pop (&fifoelement);
            if (fifoelement.freedata) {
                mem_Free(fifoelement.data);
            }
        }
    }
    else if (ftp_data.state == E_FTP_STE_END_TRANSFER && (ftp_data.d_sd > 0)) {

        servers_close_socket(&ftp_data.ld_sd);
        servers_close_socket(&ftp_data.d_sd);
        if (ftp_data.special_file) {
            ftp_data.special_file = 0;
        }
    }
}
