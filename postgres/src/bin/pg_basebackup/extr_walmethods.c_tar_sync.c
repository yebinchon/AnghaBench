
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * Walfile ;
struct TYPE_2__ {int fd; scalar_t__ compression; int sync; } ;


 int Assert (int ) ;
 int fsync (int ) ;
 int tar_clear_error () ;
 TYPE_1__* tar_data ;

__attribute__((used)) static int
tar_sync(Walfile f)
{
 Assert(f != ((void*)0));
 tar_clear_error();

 if (!tar_data->sync)
  return 0;





 if (tar_data->compression)
  return 0;

 return fsync(tar_data->fd);
}
