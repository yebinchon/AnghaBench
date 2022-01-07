
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int basedir; scalar_t__ sync; } ;


 TYPE_1__* dir_data ;
 scalar_t__ fsync_fname (int ,int) ;

__attribute__((used)) static bool
dir_finish(void)
{
 if (dir_data->sync)
 {




  if (fsync_fname(dir_data->basedir, 1) != 0)
   return 0;
 }
 return 1;
}
