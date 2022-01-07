
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int * Walfile ;
struct TYPE_4__ {scalar_t__ compression; } ;
struct TYPE_3__ {int currpos; int fd; int gzfp; } ;
typedef TYPE_1__ DirectoryMethodFile ;


 int Assert (int ) ;
 TYPE_2__* dir_data ;
 scalar_t__ gzwrite (int ,void const*,size_t) ;
 scalar_t__ write (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t
dir_write(Walfile f, const void *buf, size_t count)
{
 ssize_t r;
 DirectoryMethodFile *df = (DirectoryMethodFile *) f;

 Assert(f != ((void*)0));






  r = write(df->fd, buf, count);
 if (r > 0)
  df->currpos += r;
 return r;
}
