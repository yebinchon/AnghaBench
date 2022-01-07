
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _u16 ;
struct TYPE_5__ {int c_sd; } ;
struct TYPE_4__ {int freedata; scalar_t__ data; int datasize; int closesockets; int * sd; } ;
typedef TYPE_1__ SocketFifoElement_t ;


 int E_FTP_CLOSE_CMD_AND_DATA ;
 int E_FTP_CLOSE_DATA ;
 int E_FTP_CLOSE_NONE ;
 int SOCKETFIFO_Push (TYPE_1__*) ;
 scalar_t__ ftp_cmd_buffer ;
 TYPE_2__ ftp_data ;
 int mem_Free (scalar_t__) ;
 scalar_t__ mem_Malloc (int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void ftp_send_reply (_u16 status, char *message) {
    SocketFifoElement_t fifoelement;
    if (!message) {
        message = "";
    }
    snprintf((char *)ftp_cmd_buffer, 4, "%u", status);
    strcat ((char *)ftp_cmd_buffer, " ");
    strcat ((char *)ftp_cmd_buffer, message);
    strcat ((char *)ftp_cmd_buffer, "\r\n");
    fifoelement.sd = &ftp_data.c_sd;
    fifoelement.datasize = strlen((char *)ftp_cmd_buffer);
    fifoelement.data = mem_Malloc(fifoelement.datasize);
    if (status == 221) {
        fifoelement.closesockets = E_FTP_CLOSE_CMD_AND_DATA;
    }
    else if (status == 426 || status == 451 || status == 550) {
        fifoelement.closesockets = E_FTP_CLOSE_DATA;
    }
    else {
        fifoelement.closesockets = E_FTP_CLOSE_NONE;
    }
    fifoelement.freedata = 1;
    if (fifoelement.data) {
        memcpy (fifoelement.data, ftp_cmd_buffer, fifoelement.datasize);
        if (!SOCKETFIFO_Push (&fifoelement)) {
            mem_Free(fifoelement.data);
        }
    }
}
