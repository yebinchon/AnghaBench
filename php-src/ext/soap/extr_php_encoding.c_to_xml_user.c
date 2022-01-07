
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlDocPtr ;
typedef TYPE_4__* encodeTypePtr ;
struct TYPE_19__ {TYPE_1__* map; } ;
struct TYPE_18__ {scalar_t__ children; } ;
struct TYPE_17__ {int doc; } ;
struct TYPE_16__ {int to_xml; } ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 scalar_t__ FAILURE ;
 scalar_t__ IS_STRING ;
 scalar_t__ IS_UNDEF ;
 int SOAP_ENCODED ;
 int ZVAL_NULL (int *) ;
 int Z_STRLEN (int ) ;
 int Z_STRVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ call_user_function (int *,int *,int *,int *,int,int *) ;
 int set_ns_and_type (TYPE_2__*,TYPE_4__*) ;
 int soap_error0 (int ,char*) ;
 TYPE_3__* soap_xmlParseMemory (int ,int ) ;
 int xmlAddChild (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* xmlDocCopyNode (scalar_t__,int ,int) ;
 int xmlFreeDoc (TYPE_3__*) ;
 TYPE_2__* xmlNewNode (int *,int ) ;
 int zval_ptr_dtor (int *) ;

xmlNodePtr to_xml_user(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 xmlNodePtr ret = ((void*)0);
 zval return_value;

 if (type && type->map && Z_TYPE(type->map->to_xml) != IS_UNDEF) {
  ZVAL_NULL(&return_value);

  if (call_user_function(((void*)0), ((void*)0), &type->map->to_xml, &return_value, 1, data) == FAILURE) {
   soap_error0(E_ERROR, "Encoding: Error calling to_xml callback");
  }
  if (Z_TYPE(return_value) == IS_STRING) {
   xmlDocPtr doc = soap_xmlParseMemory(Z_STRVAL(return_value), Z_STRLEN(return_value));
   if (doc && doc->children) {
    ret = xmlDocCopyNode(doc->children, parent->doc, 1);
   }
   xmlFreeDoc(doc);
  }

  zval_ptr_dtor(&return_value);
 }
 if (!ret) {
  ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 }
 xmlAddChild(parent, ret);
 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, type);
 }
 return ret;
}
