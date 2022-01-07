
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zval ;
typedef int * xmlNodePtr ;
typedef TYPE_1__* sdlTypePtr ;
typedef TYPE_2__* encodeTypePtr ;
struct TYPE_12__ {int type; TYPE_1__* sdl_type; } ;
struct TYPE_13__ {TYPE_2__ details; } ;
struct TYPE_11__ {int kind; TYPE_9__* encode; } ;


 int E_ERROR ;
 int IS_ARRAY ;
 int SOAP_ENCODED ;
 int SOAP_ENC_ARRAY ;






 int * guess_xml_convert (TYPE_2__*,int *,int,int *) ;
 int * master_to_xml (TYPE_9__*,int *,int,int *) ;
 int set_ns_and_type (int *,TYPE_2__*) ;
 int soap_error0 (int ,char*) ;
 int * to_xml_array (TYPE_2__*,int *,int,int *) ;
 int * to_xml_list (TYPE_2__*,int *,int,int *) ;
 int * to_xml_object (TYPE_2__*,int *,int,int *) ;
 int * to_xml_union (TYPE_2__*,int *,int,int *) ;

xmlNodePtr sdl_guess_convert_xml(encodeTypePtr enc, zval *data, int style, xmlNodePtr parent)
{
 sdlTypePtr type;
 xmlNodePtr ret = ((void*)0);

 type = enc->sdl_type;

 if (type == ((void*)0)) {
  ret = guess_xml_convert(enc, data, style, parent);
  if (style == SOAP_ENCODED) {
   set_ns_and_type(ret, enc);
  }
  return ret;
 }
 switch(type->kind) {
  case 129:
   if (type->encode && enc != &type->encode->details) {
    ret = master_to_xml(type->encode, data, style, parent);
   } else {
    ret = guess_xml_convert(enc, data, style, parent);
   }
   break;
  case 131:
   ret = to_xml_list(enc, data, style, parent);
   break;
  case 128:
   ret = to_xml_union(enc, data, style, parent);
   break;
  case 133:
  case 130:
  case 132:
   if (type->encode &&
       (type->encode->details.type == IS_ARRAY ||
        type->encode->details.type == SOAP_ENC_ARRAY)) {
    return to_xml_array(enc, data, style, parent);
   } else {
    return to_xml_object(enc, data, style, parent);
   }
   break;
  default:
    soap_error0(E_ERROR, "Encoding: Internal Error");
   break;
 }
 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, enc);
 }
 return ret;
}
