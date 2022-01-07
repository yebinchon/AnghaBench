
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numcallrefs; } ;
struct TYPE_4__ {TYPE_1__ meta; } ;
typedef TYPE_2__ RAnalFunction ;



__attribute__((used)) static int cmpcalls(const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 int as = a->meta.numcallrefs;
 int bs = b->meta.numcallrefs;
 return (as > bs)? 1: (as < bs)? -1: 0;
}
