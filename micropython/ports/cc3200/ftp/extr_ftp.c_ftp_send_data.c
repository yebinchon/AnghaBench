
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _u32 ;
struct TYPE_5__ {int d_sd; int dBuffer; } ;
struct TYPE_4__ {int freedata; int closesockets; int * sd; int datasize; int data; } ;
typedef TYPE_1__ SocketFifoElement_t ;


 int E_FTP_CLOSE_NONE ;
 int SOCKETFIFO_Push (TYPE_1__*) ;
 TYPE_2__ ftp_data ;

__attribute__((used)) static void ftp_send_data (_u32 datasize) {
    SocketFifoElement_t fifoelement;

    fifoelement.data = ftp_data.dBuffer;
    fifoelement.datasize = datasize;
    fifoelement.sd = &ftp_data.d_sd;
    fifoelement.closesockets = E_FTP_CLOSE_NONE;
    fifoelement.freedata = 0;
    SOCKETFIFO_Push (&fifoelement);
}
