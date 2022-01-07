
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * Walfile ;
struct TYPE_4__ {scalar_t__ compression; int sync; } ;
struct TYPE_3__ {int fd; int gzfp; } ;
typedef TYPE_1__ DirectoryMethodFile ;


 int Assert (int ) ;
 scalar_t__ Z_OK ;
 int Z_SYNC_FLUSH ;
 TYPE_2__* dir_data ;
 int fsync (int ) ;
 scalar_t__ gzflush (int ,int ) ;

__attribute__((used)) static int
dir_sync(Walfile f)
{
 Assert(f != ((void*)0));

 if (!dir_data->sync)
  return 0;
 return fsync(((DirectoryMethodFile *) f)->fd);
}
