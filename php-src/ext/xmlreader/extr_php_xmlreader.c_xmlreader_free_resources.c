
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * schema; int * ptr; int * input; } ;
typedef TYPE_1__ xmlreader_object ;
typedef int xmlRelaxNGPtr ;


 int xmlFreeParserInputBuffer (int *) ;
 int xmlFreeTextReader (int *) ;
 int xmlRelaxNGFree (int ) ;

__attribute__((used)) static void xmlreader_free_resources(xmlreader_object *intern) {
 if (intern) {
  if (intern->input) {
   xmlFreeParserInputBuffer(intern->input);
   intern->input = ((void*)0);
  }

  if (intern->ptr) {
   xmlFreeTextReader(intern->ptr);
   intern->ptr = ((void*)0);
  }






 }
}
