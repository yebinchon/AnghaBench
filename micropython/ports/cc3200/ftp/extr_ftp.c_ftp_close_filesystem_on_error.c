
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int special_file; } ;


 int ftp_close_files () ;
 TYPE_1__ ftp_data ;
 int updater_finnish () ;

__attribute__((used)) static void ftp_close_filesystem_on_error (void) {
    ftp_close_files();
    if (ftp_data.special_file) {
        updater_finnish ();
        ftp_data.special_file = 0;
    }
}
