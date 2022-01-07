
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int string; } ;
typedef TYPE_1__ RBinString ;


 int strncmp (int ,int ,int) ;

__attribute__((used)) static int bs_cmp(const RBinString *a, const RBinString *b) {
 int diff = a->length - b->length;
 return diff == 0? strncmp (a->string, b->string, a->length): diff;
}
