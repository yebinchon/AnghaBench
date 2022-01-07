
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int state; } ;


 int E_FTP_STE_DISABLED ;
 TYPE_1__ ftp_data ;
 int ftp_reset () ;

void ftp_disable (void) {
    ftp_reset();
    ftp_data.enabled = 0;
    ftp_data.state = E_FTP_STE_DISABLED;
}
