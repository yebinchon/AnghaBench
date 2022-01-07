
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* language; struct TYPE_4__* type; struct TYPE_4__* data; struct TYPE_4__* timestr; struct TYPE_4__* name; } ;
typedef TYPE_1__ r_pe_resource ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void _free_resource(r_pe_resource *rs) {
 if (rs) {
  free (rs->name);
  free (rs->timestr);
  free (rs->data);
  free (rs->type);
  free (rs->language);
  free (rs);
 }
}
