
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_4__* xmlNodePtr ;
typedef TYPE_5__* xmlAttrPtr ;
typedef TYPE_6__* encodePtr ;
struct TYPE_19__ {TYPE_2__* sdl_type; } ;
struct TYPE_22__ {TYPE_3__ details; } ;
struct TYPE_21__ {TYPE_1__* children; } ;
struct TYPE_20__ {int properties; } ;
struct TYPE_18__ {scalar_t__ kind; TYPE_6__* encode; } ;
struct TYPE_17__ {int content; } ;


 int SOAP_GLOBAL (int ) ;
 int UNKNOWN_TYPE ;
 scalar_t__ XSD_TYPEKIND_COMPLEX ;
 int XSI_NAMESPACE ;
 TYPE_4__* check_and_resolve_href (TYPE_4__*) ;
 TYPE_5__* get_attribute_ex (int ,char*,int ) ;
 TYPE_6__* get_conversion (int ) ;
 TYPE_6__* get_encoder_from_prefix (int ,TYPE_4__*,int ) ;
 int * master_to_zval_int (int *,TYPE_6__*,TYPE_4__*) ;
 int sdl ;

zval *master_to_zval(zval *ret, encodePtr encode, xmlNodePtr data)
{
 data = check_and_resolve_href(data);

 if (encode == ((void*)0)) {
  encode = get_conversion(UNKNOWN_TYPE);
 } else {

  xmlAttrPtr type_attr = get_attribute_ex(data->properties,"type", XSI_NAMESPACE);

  if (type_attr != ((void*)0)) {
   encodePtr enc = get_encoder_from_prefix(SOAP_GLOBAL(sdl), data, type_attr->children->content);

   if (enc != ((void*)0) && enc != encode) {
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
     if (enc != ((void*)0)) {
       encode = enc;
     }
   }
  }
 }
 return master_to_zval_int(ret, encode, data);
}
