
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int text; int attrs; int children; } ;
typedef TYPE_1__ xml_element ;


 int Q_Init (int *) ;
 TYPE_1__* ecalloc (int,int) ;
 int simplestring_addn (int *,char*,int ) ;
 int simplestring_init (int *) ;

xml_element* xml_elem_new() {
   xml_element* elem = ecalloc(1, sizeof(xml_element));
   if(elem) {
      Q_Init(&elem->children);
      Q_Init(&elem->attrs);
      simplestring_init(&elem->text);


      simplestring_addn(&elem->text, "", 0);
   }
   return elem;
}
