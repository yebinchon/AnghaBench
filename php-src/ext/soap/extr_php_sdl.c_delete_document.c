
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlDocPtr ;


 int Z_PTR_P (int *) ;
 int xmlFreeDoc (int ) ;

__attribute__((used)) static void delete_document(zval *zv)
{
 xmlDocPtr doc = Z_PTR_P(zv);
 xmlFreeDoc(doc);
}
