
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlChar ;
typedef TYPE_5__* xmlAttrPtr ;
typedef TYPE_6__* encodeTypePtr ;
typedef TYPE_7__* encodePtr ;
struct TYPE_25__ {int type; TYPE_2__* sdl_type; } ;
struct TYPE_26__ {TYPE_6__ details; } ;
struct TYPE_24__ {TYPE_1__* children; } ;
struct TYPE_23__ {scalar_t__ type; int doc; struct TYPE_23__* next; struct TYPE_23__* children; scalar_t__ properties; } ;
struct TYPE_22__ {scalar_t__ href; } ;
struct TYPE_21__ {scalar_t__ kind; TYPE_7__* encode; } ;
struct TYPE_20__ {int * content; } ;


 int BAD_CAST (char*) ;
 int IS_NULL ;
 int SOAP_ENC_ARRAY ;
 int SOAP_ENC_OBJECT ;
 scalar_t__ SOAP_GLOBAL (int ) ;
 scalar_t__ XML_ELEMENT_NODE ;
 int XSD_STRING ;
 scalar_t__ XSD_TYPEKIND_COMPLEX ;
 int XSI_NAMESPACE ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int Z_TRY_DELREF_P (int *) ;
 int add_property_long (int *,char*,int ) ;
 int add_property_string (int *,char*,char*) ;
 int add_property_zval (int *,char*,int *) ;
 TYPE_4__* check_and_resolve_href (TYPE_4__*) ;
 int efree (char*) ;
 scalar_t__ get_attribute (scalar_t__,char*) ;
 TYPE_5__* get_attribute_ex (scalar_t__,char*,int ) ;
 TYPE_7__* get_conversion (int ) ;
 TYPE_7__* get_encoder_from_prefix (scalar_t__,TYPE_4__*,int *) ;
 int master_to_zval_int (int *,TYPE_7__*,TYPE_4__*) ;
 int object_init_ex (int *,int ) ;
 int parse_namespace (int *,char**,char**) ;
 int sdl ;
 int soap_var_class_entry ;
 TYPE_3__* xmlSearchNs (int ,TYPE_4__*,int ) ;

__attribute__((used)) static zval *guess_zval_convert(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
 encodePtr enc = ((void*)0);
 xmlAttrPtr tmpattr;
 xmlChar *type_name = ((void*)0);

 data = check_and_resolve_href(data);

 if (data == ((void*)0)) {
  enc = get_conversion(IS_NULL);
 } else if (data->properties && get_attribute_ex(data->properties, "nil", XSI_NAMESPACE)) {
  enc = get_conversion(IS_NULL);
 } else {
  tmpattr = get_attribute_ex(data->properties,"type", XSI_NAMESPACE);
  if (tmpattr != ((void*)0)) {
    type_name = tmpattr->children->content;
   enc = get_encoder_from_prefix(SOAP_GLOBAL(sdl), data, tmpattr->children->content);
   if (enc && type == &enc->details) {
    enc = ((void*)0);
   }
   if (enc != ((void*)0)) {
     encodePtr tmp = enc;
     while (tmp &&
            tmp->details.sdl_type != ((void*)0) &&
            tmp->details.sdl_type->kind != XSD_TYPEKIND_COMPLEX) {
       if (enc == tmp->details.sdl_type->encode ||
           tmp == tmp->details.sdl_type->encode) {
        enc = ((void*)0);
        break;
       }
       tmp = tmp->details.sdl_type->encode;
     }
   }
  }

  if (enc == ((void*)0)) {


   xmlNodePtr trav;

   if (get_attribute(data->properties, "arrayType") ||
       get_attribute(data->properties, "itemType") ||
       get_attribute(data->properties, "arraySize")) {
    enc = get_conversion(SOAP_ENC_ARRAY);
   } else {
    enc = get_conversion(XSD_STRING);
    trav = data->children;
    while (trav != ((void*)0)) {
     if (trav->type == XML_ELEMENT_NODE) {
      enc = get_conversion(SOAP_ENC_OBJECT);
      break;
     }
     trav = trav->next;
    }
   }
  }
 }
 master_to_zval_int(ret, enc, data);
 if (SOAP_GLOBAL(sdl) && type_name && enc->details.sdl_type) {
  zval soapvar;
  char *ns, *cptype;
  xmlNsPtr nsptr;

  object_init_ex(&soapvar, soap_var_class_entry);
  add_property_long(&soapvar, "enc_type", enc->details.type);
  Z_TRY_DELREF_P(ret);
  add_property_zval(&soapvar, "enc_value", ret);
  parse_namespace(type_name, &cptype, &ns);
  nsptr = xmlSearchNs(data->doc, data, BAD_CAST(ns));
  add_property_string(&soapvar, "enc_stype", cptype);
  if (nsptr) {
   add_property_string(&soapvar, "enc_ns", (char*)nsptr->href);
  }
  efree(cptype);
  if (ns) {efree(ns);}
  ZVAL_COPY_VALUE(ret, &soapvar);
 }
 return ret;
}
