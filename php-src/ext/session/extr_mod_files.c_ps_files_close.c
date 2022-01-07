
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ ps_files ;


 int LOCK_UN ;
 int close (int) ;
 int flock (int,int ) ;

__attribute__((used)) static void ps_files_close(ps_files *data)
{
 if (data->fd != -1) {





  close(data->fd);
  data->fd = -1;
 }
}
