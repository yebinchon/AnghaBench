
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ftp_result_t ;
typedef int UINT ;
struct TYPE_2__ {int fp; } ;
typedef scalar_t__ FRESULT ;


 int E_FTP_RESULT_FAILED ;
 int E_FTP_RESULT_OK ;
 scalar_t__ FR_OK ;
 scalar_t__ f_write (int *,char*,scalar_t__,int *) ;
 int ftp_close_files () ;
 TYPE_1__ ftp_data ;

__attribute__((used)) static ftp_result_t ftp_write_file (char *filebuf, uint32_t size) {
    ftp_result_t result = E_FTP_RESULT_FAILED;
    uint32_t actualsize;
    FRESULT res = f_write(&ftp_data.fp, filebuf, size, (UINT *)&actualsize);
    if ((actualsize == size) && (FR_OK == res)) {
        result = E_FTP_RESULT_OK;
    }
    else {
        ftp_close_files();
    }
    return result;
}
