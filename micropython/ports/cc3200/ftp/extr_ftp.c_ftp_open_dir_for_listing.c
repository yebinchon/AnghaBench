
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ftp_result_t ;
struct TYPE_2__ {int listroot; int e_open; int dp; } ;
typedef scalar_t__ FRESULT ;


 int E_FTP_DIR_OPEN ;
 int E_FTP_RESULT_CONTINUE ;
 int E_FTP_RESULT_FAILED ;
 scalar_t__ FR_OK ;
 scalar_t__ f_opendir_helper (int *,char const*) ;
 TYPE_1__ ftp_data ;

__attribute__((used)) static ftp_result_t ftp_open_dir_for_listing (const char *path) {

    if (path[0] == '/' && path[1] == '\0') {
        ftp_data.listroot = 1;
    } else {
        FRESULT res;
        res = f_opendir_helper(&ftp_data.dp, path);
        if (res != FR_OK) {
            return E_FTP_RESULT_FAILED;
        }
        ftp_data.e_open = E_FTP_DIR_OPEN;
        ftp_data.listroot = 0;
    }
    return E_FTP_RESULT_CONTINUE;
}
