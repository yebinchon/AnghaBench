
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
typedef TYPE_1__ RDebugMap ;



__attribute__((used)) static int cmp(const void *a, const void *b) {
 RDebugMap *ma = (RDebugMap*) a;
 RDebugMap *mb = (RDebugMap*) b;
 return ma->addr - mb->addr;
}
