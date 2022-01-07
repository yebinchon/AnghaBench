
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ftp_cmd_index_t ;
struct TYPE_2__ {int cmd; } ;


 size_t E_FTP_CMD_NOT_SUPPORTED ;
 size_t E_FTP_NUM_FTP_CMDS ;
 int FTP_CMD_SIZE_MAX ;
 TYPE_1__* ftp_cmd_table ;
 int ftp_pop_param (char**,char*) ;
 int stoupper (char*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static ftp_cmd_index_t ftp_pop_command (char **str) {
    char _cmd[FTP_CMD_SIZE_MAX];
    ftp_pop_param (str, _cmd);
    stoupper (_cmd);
    for (ftp_cmd_index_t i = 0; i < E_FTP_NUM_FTP_CMDS; i++) {
        if (!strcmp (_cmd, ftp_cmd_table[i].cmd)) {

            (*str)++;
            return i;
        }
    }
    return E_FTP_CMD_NOT_SUPPORTED;
}
