
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int text; int * name; int attrs; int children; struct TYPE_7__* val; struct TYPE_7__* key; } ;
typedef TYPE_1__ xml_element_attr ;
typedef TYPE_1__ xml_element ;


 int Q_Destroy (int *) ;
 TYPE_1__* Q_Head (int *) ;
 TYPE_1__* Q_Next (int *) ;
 int efree (char*) ;
 int my_free (TYPE_1__*) ;
 int simplestring_free (int *) ;

void xml_elem_free_non_recurse(xml_element* root) {
   if(root) {
      xml_element_attr* attrs = Q_Head(&root->attrs);
      while(attrs) {
         my_free(attrs->key);
         my_free(attrs->val);
         my_free(attrs);
         attrs = Q_Next(&root->attrs);
      }

      Q_Destroy(&root->children);
      Q_Destroy(&root->attrs);
      if(root->name) {
          efree((char *)root->name);
          root->name = ((void*)0);
      }
      simplestring_free(&root->text);
      my_free(root);
   }
}
