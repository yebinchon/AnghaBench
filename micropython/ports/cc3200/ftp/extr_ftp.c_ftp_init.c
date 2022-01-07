
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_sd; int d_sd; int lc_sd; int ld_sd; int special_file; scalar_t__ volcount; int substate; int state; int e_open; int * dBuffer; } ;


 int ASSERT (int ) ;
 int E_FTP_NOTHING_OPEN ;
 int E_FTP_STE_DISABLED ;
 int E_FTP_STE_SUB_DISCONNECTED ;
 scalar_t__ FTP_BUFFER_SIZE ;
 scalar_t__ FTP_CMD_SIZE_MAX ;
 scalar_t__ FTP_MAX_PARAM_SIZE ;
 int FTP_SOCKETFIFO_ELEMENTS_MAX ;
 int SOCKETFIFO_Init (int *,void*,int ) ;
 int * ftp_cmd_buffer ;
 TYPE_1__ ftp_data ;
 scalar_t__ ftp_fifoelements ;
 int * ftp_path ;
 int * ftp_scratch_buffer ;
 int ftp_socketfifo ;
 void* mem_Malloc (scalar_t__) ;

void ftp_init (void) {

    ASSERT ((ftp_data.dBuffer = mem_Malloc(FTP_BUFFER_SIZE)) != ((void*)0));
    ASSERT ((ftp_path = mem_Malloc(FTP_MAX_PARAM_SIZE)) != ((void*)0));
    ASSERT ((ftp_scratch_buffer = mem_Malloc(FTP_MAX_PARAM_SIZE)) != ((void*)0));
    ASSERT ((ftp_cmd_buffer = mem_Malloc(FTP_MAX_PARAM_SIZE + FTP_CMD_SIZE_MAX)) != ((void*)0));
    SOCKETFIFO_Init (&ftp_socketfifo, (void *)ftp_fifoelements, FTP_SOCKETFIFO_ELEMENTS_MAX);
    ftp_data.c_sd = -1;
    ftp_data.d_sd = -1;
    ftp_data.lc_sd = -1;
    ftp_data.ld_sd = -1;
    ftp_data.e_open = E_FTP_NOTHING_OPEN;
    ftp_data.state = E_FTP_STE_DISABLED;
    ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
    ftp_data.special_file = 0;
    ftp_data.volcount = 0;
}
