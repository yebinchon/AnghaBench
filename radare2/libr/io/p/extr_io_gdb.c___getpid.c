
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pid; TYPE_1__* data; } ;
struct TYPE_3__ {scalar_t__ magic; int pid; } ;
typedef TYPE_1__ RIODescData ;
typedef int RIODesc ;


 scalar_t__ R_GDB_MAGIC ;
 TYPE_2__* desc ;

__attribute__((used)) static int __getpid(RIODesc *fd) {

 return desc ? desc->pid : -1;
}
