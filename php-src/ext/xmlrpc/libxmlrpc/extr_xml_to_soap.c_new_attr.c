
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * val; int * key; } ;
typedef TYPE_1__ xml_element_attr ;


 TYPE_1__* emalloc (int) ;
 int * estrdup (char const*) ;

__attribute__((used)) static xml_element_attr* new_attr(const char* key, const char* val) {
 xml_element_attr* attr = emalloc(sizeof(xml_element_attr));
 if (attr) {
  attr->key = key ? estrdup(key) : ((void*)0);
  attr->val = val ? estrdup(val) : ((void*)0);
 }
 return attr;
}
