
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diseqc_cmd {int wait; int cmd; } ;
typedef int * fe_sec_voltage_t ;
typedef int * fe_sec_tone_mode_t ;
typedef int * fe_sec_mini_cmd_t ;


 int FE_DISEQC_SEND_BURST ;
 int FE_DISEQC_SEND_MASTER_CMD ;
 int FE_SET_TONE ;
 int FE_SET_VOLTAGE ;
 int * SEC_TONE_OFF ;
 scalar_t__ ioctl (int,int ,int *) ;
 int usleep (int) ;

__attribute__((used)) static int diseqc_send_msg(int fd, fe_sec_voltage_t v, struct diseqc_cmd *cmd,
                           fe_sec_tone_mode_t t, fe_sec_mini_cmd_t b)
{
    if (ioctl(fd, FE_SET_TONE, SEC_TONE_OFF) < 0)
        return -1;
    if (ioctl(fd, FE_SET_VOLTAGE, v) < 0)
        return -1;
    usleep(15 * 1000);
    if (ioctl(fd, FE_DISEQC_SEND_MASTER_CMD, &cmd->cmd) < 0)
        return -1;
    usleep(cmd->wait * 1000);
    usleep(15 * 1000);
    if (ioctl(fd, FE_DISEQC_SEND_BURST, b) < 0)
        return -1;
    usleep(15 * 1000);
    if (ioctl(fd, FE_SET_TONE, t) < 0)
        return -1;
    usleep(100000);

    return 0;
}
