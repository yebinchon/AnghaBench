
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_process (int ,int ,int ,unsigned long) ;

int sys_clone(unsigned long stack){
 return copy_process(0, 0, 0, stack);
}
