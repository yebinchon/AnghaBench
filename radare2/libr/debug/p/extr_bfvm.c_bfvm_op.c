
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int io; int (* read_at ) (int ,int ,int*,int) ;} ;
struct TYPE_5__ {int eip; TYPE_1__ iob; } ;
typedef TYPE_2__ BfvmCPU ;


 int stub1 (int ,int ,int*,int) ;

__attribute__((used)) static ut8 bfvm_op(BfvmCPU *c) {

 ut8 buf[4] = {0};
 if (c && c->iob.read_at && !c->iob.read_at (c->iob.io, c->eip, buf, 4)) {
  return 0xff;
 }
 return buf[0];
}
