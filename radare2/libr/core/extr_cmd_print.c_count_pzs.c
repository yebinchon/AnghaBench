
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct count_pz_t {scalar_t__ flagspace; scalar_t__ addr; scalar_t__ size; int * ret; } ;
struct TYPE_3__ {scalar_t__ space; scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static bool count_pzs(RFlagItem *fi, void *u) {
 struct count_pz_t *user = (struct count_pz_t *)u;
 if (fi->space == user->flagspace &&
     ((user->addr <= fi->offset && fi->offset < user->addr + user->size) ||
      (user->addr <= fi->offset + fi->size && fi->offset + fi->size < user->addr + user->size))) {
  (*user->ret)++;
 }

 return 1;
}
