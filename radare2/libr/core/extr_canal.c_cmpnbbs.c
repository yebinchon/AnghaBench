
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_2__ {int bbs; } ;
typedef TYPE_1__ RAnalFunction ;


 scalar_t__ r_list_length (int ) ;

__attribute__((used)) static int cmpnbbs (const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 ut64 as = r_list_length (a->bbs);
 ut64 bs = r_list_length (b->bbs);
 return (as> bs)? 1: (as< bs)? -1: 0;
}
