
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int closechild; } ;


 TYPE_1__ ftp_data ;
 int ftp_open_child (int ,int ) ;
 int ftp_path ;
 int ftp_pop_param (char**,int ) ;
 int ftp_scratch_buffer ;

__attribute__((used)) static void ftp_get_param_and_open_child (char **bufptr) {
    ftp_pop_param (bufptr, ftp_scratch_buffer);
    ftp_open_child (ftp_path, ftp_scratch_buffer);
    ftp_data.closechild = 1;
}
