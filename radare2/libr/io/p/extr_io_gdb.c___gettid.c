
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; } ;
typedef int RIODesc ;


 TYPE_1__* desc ;

__attribute__((used)) static int __gettid(RIODesc *fd) {
 return desc ? desc->tid : -1;
}
