
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; scalar_t__ realname; } ;
typedef TYPE_1__ RFlagItem ;


 int free (scalar_t__) ;

__attribute__((used)) static void free_item_name(RFlagItem *item) {
 if (item->name != item->realname) {
  free (item->name);
 }
}
