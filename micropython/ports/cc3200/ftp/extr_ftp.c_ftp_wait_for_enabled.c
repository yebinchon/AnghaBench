
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; scalar_t__ enabled; } ;


 int E_FTP_STE_START ;
 TYPE_1__ ftp_data ;

__attribute__((used)) static void ftp_wait_for_enabled (void) {

    if (ftp_data.enabled) {
        ftp_data.state = E_FTP_STE_START;
    }
}
