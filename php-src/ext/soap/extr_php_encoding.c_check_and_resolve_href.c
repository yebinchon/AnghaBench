
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* xmlNodePtr ;
typedef char xmlChar ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_16__ {TYPE_2__* children; struct TYPE_16__* next; int * ns; } ;
struct TYPE_15__ {TYPE_1__* doc; TYPE_4__* properties; } ;
struct TYPE_14__ {char* content; } ;
struct TYPE_13__ {int children; } ;


 int E_ERROR ;
 int SOAP_1_2_ENC_NAMESPACE ;
 TYPE_4__* get_attribute (TYPE_4__*,char*) ;
 TYPE_4__* get_attribute_ex (TYPE_4__*,char*,int ) ;
 TYPE_3__* get_node_with_attribute_recursive (int ,int *,char*,char*) ;
 TYPE_3__* get_node_with_attribute_recursive_ex (int ,int *,int *,char*,char*,int ) ;
 int soap_error1 (int ,char*,char*) ;

__attribute__((used)) static xmlNodePtr check_and_resolve_href(xmlNodePtr data)
{
 if (data && data->properties) {
  xmlAttrPtr href;

  href = data->properties;
  while (1) {
   href = get_attribute(href, "href");
   if (href == ((void*)0) || href->ns == ((void*)0)) {break;}
   href = href->next;
  }
  if (href) {

   if (href->children->content[0] == '#') {
    xmlNodePtr ret = get_node_with_attribute_recursive(data->doc->children, ((void*)0), "id", (char*)&href->children->content[1]);
    if (!ret) {
     soap_error1(E_ERROR, "Encoding: Unresolved reference '%s'", href->children->content);
    }
    return ret;
   } else {

    soap_error1(E_ERROR, "Encoding: External reference '%s'", href->children->content);
   }
  }

  href = get_attribute_ex(data->properties, "ref", SOAP_1_2_ENC_NAMESPACE);
  if (href) {
   xmlChar* id;
   xmlNodePtr ret;

   if (href->children->content[0] == '#') {
    id = href->children->content+1;
   } else {
    id = href->children->content;
   }
   ret = get_node_with_attribute_recursive_ex(data->doc->children, ((void*)0), ((void*)0), "id", (char*)id, SOAP_1_2_ENC_NAMESPACE);
   if (!ret) {
    soap_error1(E_ERROR, "Encoding: Unresolved reference '%s'", href->children->content);
   } else if (ret == data) {
    soap_error1(E_ERROR, "Encoding: Violation of id and ref information items '%s'", href->children->content);
   }
   return ret;
  }
 }
 return data;
}
