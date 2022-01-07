
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num; } ;
struct TYPE_6__ {scalar_t__ alias; int offset; } ;
typedef TYPE_1__ RFlagItem ;
typedef TYPE_2__ RFlag ;


 int r_num_math (int ,scalar_t__) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static RFlagItem *evalFlag(RFlag *f, RFlagItem *item) {
 r_return_val_if_fail (f && item, ((void*)0));
 if (item->alias) {
  item->offset = r_num_math (f->num, item->alias);
 }
 return item;
}
