
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* watch; int backup; } ;
typedef TYPE_2__ phpdbg_watch_element ;
struct TYPE_4__ {int backup; } ;


 int memcpy (int *,int *,int) ;

void phpdbg_backup_watch_element(phpdbg_watch_element *element) {
 memcpy(&element->backup, &element->watch->backup, sizeof(element->backup));
}
