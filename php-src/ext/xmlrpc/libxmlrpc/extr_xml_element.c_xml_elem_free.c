
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int children; } ;
typedef TYPE_1__ xml_element ;


 TYPE_1__* Q_Head (int *) ;
 TYPE_1__* Q_Next (int *) ;
 int xml_elem_free_non_recurse (TYPE_1__*) ;

void xml_elem_free(xml_element* root) {
   if(root) {
      xml_element* kids = Q_Head(&root->children);
      while(kids) {
         xml_elem_free(kids);
         kids = Q_Next(&root->children);
      }
      xml_elem_free_non_recurse(root);
   }
}
