
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ volcount; int substate; int state; int ld_sd; int lc_sd; } ;


 int E_FTP_STE_START ;
 int E_FTP_STE_SUB_DISCONNECTED ;
 int SOCKETFIFO_Flush () ;
 int ftp_close_cmd_data () ;
 TYPE_1__ ftp_data ;
 int servers_close_socket (int *) ;

void ftp_reset (void) {

    servers_close_socket(&ftp_data.lc_sd);
    servers_close_socket(&ftp_data.ld_sd);
    ftp_close_cmd_data();
    ftp_data.state = E_FTP_STE_START;
    ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
    ftp_data.volcount = 0;
    SOCKETFIFO_Flush();
}
