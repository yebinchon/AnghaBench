
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
typedef TYPE_1__ RAnalCaseOp ;



__attribute__((used)) static int casecmp(const void* _a, const void * _b) {
 const RAnalCaseOp* a = _a;
 const RAnalCaseOp* b = _b;
 return a->addr != b->addr;
}
