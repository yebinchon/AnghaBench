
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct count_pz_t {scalar_t__ addr; int * ret; } ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static bool count_pzf(RFlagItem *fi, void *u) {
 struct count_pz_t *user = (struct count_pz_t *)u;
 if (fi->offset <= user->addr && user->addr < fi->offset + fi->size) {
  (*user->ret)++;
 }
 return 1;
}
