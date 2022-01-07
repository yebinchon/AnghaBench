
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
typedef TYPE_1__ RAnalFunction ;



__attribute__((used)) static int cmpaddr (const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 return (a->addr > b->addr)? 1: (a->addr < b->addr)? -1: 0;
}
