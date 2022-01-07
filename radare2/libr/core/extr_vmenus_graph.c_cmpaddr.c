
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
typedef TYPE_1__ RCoreVisualViewGraphItem ;



__attribute__((used)) static int cmpaddr (const void *_a, const void *_b) {
 const RCoreVisualViewGraphItem *a = _a, *b = _b;
 return a->addr - b->addr;
}
