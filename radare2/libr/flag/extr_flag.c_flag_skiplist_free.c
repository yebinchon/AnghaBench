
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ RFlagsAtOffset ;


 int free (void*) ;
 int r_list_free (int ) ;

__attribute__((used)) static void flag_skiplist_free(void *data) {
 RFlagsAtOffset *item = (RFlagsAtOffset *)data;
 r_list_free (item->flags);
 free (data);
}
