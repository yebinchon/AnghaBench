
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bbs; } ;
typedef TYPE_1__ RAnalFunction ;


 scalar_t__ r_list_length (int ) ;

__attribute__((used)) static int cmpbbs (const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 int la = (int)r_list_length (a->bbs);
 int lb = (int)r_list_length (b->bbs);
 return (la > lb)? -1: (la < lb)? 1 : 0;
}
