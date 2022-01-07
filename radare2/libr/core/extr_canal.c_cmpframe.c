
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxstack; } ;
typedef TYPE_1__ RAnalFunction ;



__attribute__((used)) static int cmpframe(const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 int as = a->maxstack;
 int bs = b->maxstack;
 return (as > bs)? 1: (as < bs)? -1: 0;
}
