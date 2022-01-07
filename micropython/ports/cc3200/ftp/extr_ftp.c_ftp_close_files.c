
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ e_open; int dp; int fp; } ;


 scalar_t__ E_FTP_DIR_OPEN ;
 scalar_t__ E_FTP_FILE_OPEN ;
 scalar_t__ E_FTP_NOTHING_OPEN ;
 int f_close (int *) ;
 int f_closedir (int *) ;
 TYPE_1__ ftp_data ;

__attribute__((used)) static void ftp_close_files (void) {
    if (ftp_data.e_open == E_FTP_FILE_OPEN) {
        f_close(&ftp_data.fp);
    }
    else if (ftp_data.e_open == E_FTP_DIR_OPEN) {
        f_closedir(&ftp_data.dp);
    }
    ftp_data.e_open = E_FTP_NOTHING_OPEN;
}
