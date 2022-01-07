
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ RAnalFunction ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmpname(const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 int as = strcmp (a->name, b->name);
 int bs = strcmp (b->name, a->name);
 return (as > bs)? 1: (as < bs)? -1: 0;
}
