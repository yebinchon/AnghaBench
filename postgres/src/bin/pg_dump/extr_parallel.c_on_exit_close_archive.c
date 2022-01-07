
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * AHX; } ;
typedef int Archive ;


 int archive_close_connection ;
 int on_exit_nicely (int ,TYPE_1__*) ;
 TYPE_1__ shutdown_info ;

void
on_exit_close_archive(Archive *AHX)
{
 shutdown_info.AHX = AHX;
 on_exit_nicely(archive_close_connection, &shutdown_info);
}
