
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlXPathObjectPtr ;


 int xmlXPathFreeObject (int ) ;

__attribute__((used)) static void
xmlXPathFreeObjectWrapper(void *obj) {
    xmlXPathFreeObject((xmlXPathObjectPtr) obj);
}
