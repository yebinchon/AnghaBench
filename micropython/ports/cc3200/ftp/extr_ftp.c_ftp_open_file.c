
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_open; int fp; } ;
typedef scalar_t__ FRESULT ;


 int E_FTP_FILE_OPEN ;
 scalar_t__ FR_OK ;
 scalar_t__ f_open_helper (int *,char const*,int) ;
 TYPE_1__ ftp_data ;

__attribute__((used)) static bool ftp_open_file (const char *path, int mode) {
    FRESULT res = f_open_helper(&ftp_data.fp, path, mode);
    if (res != FR_OK) {
        return 0;
    }
    ftp_data.e_open = E_FTP_FILE_OPEN;
    return 1;
}
