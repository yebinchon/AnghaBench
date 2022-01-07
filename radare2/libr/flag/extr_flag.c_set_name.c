
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; char* realname; } ;
typedef TYPE_1__ RFlagItem ;


 int free_item_name (TYPE_1__*) ;
 int free_item_realname (TYPE_1__*) ;

__attribute__((used)) static void set_name(RFlagItem *item, char *name) {
 free_item_name (item);
 item->name = name;
 free_item_realname (item);
 item->realname = item->name;
}
