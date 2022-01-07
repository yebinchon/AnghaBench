
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ os_dir_t ;


 int FindClose (int ) ;
 int bfree (TYPE_1__*) ;

void os_closedir(os_dir_t *dir)
{
 if (dir) {
  FindClose(dir->handle);
  bfree(dir);
 }
}
