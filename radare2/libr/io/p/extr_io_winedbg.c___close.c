
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ RIODesc ;


 int r_sys_cmdf (char*) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 if (!fd || !fd->data) {
  return -1;
 }

 r_sys_cmdf ("pkill rarun2");
 return 0;
}
