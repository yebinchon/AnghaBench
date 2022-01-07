
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ baddr_shift; } ;
typedef TYPE_1__ RBinObject ;



__attribute__((used)) static ut64 binobj_a2b(RBinObject *o, ut64 addr) {
 return o ? addr + o->baddr_shift : addr;
}
