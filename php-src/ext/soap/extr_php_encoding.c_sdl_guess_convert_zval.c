
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
typedef int xmlNodePtr ;
typedef TYPE_1__* sdlTypePtr ;
typedef TYPE_2__* encodeTypePtr ;
struct TYPE_11__ {int type; TYPE_1__* sdl_type; } ;
struct TYPE_12__ {TYPE_2__ details; } ;
struct TYPE_10__ {int kind; TYPE_8__* encode; } ;


 int E_ERROR ;
 int IS_ARRAY ;
 int SOAP_ENC_ARRAY ;






 int * guess_zval_convert (int *,TYPE_2__*,int ) ;
 int * master_to_zval_int (int *,TYPE_8__*,int ) ;
 int soap_error0 (int ,char*) ;
 int * to_zval_array (int *,TYPE_2__*,int ) ;
 int * to_zval_list (int *,TYPE_2__*,int ) ;
 int * to_zval_object (int *,TYPE_2__*,int ) ;
 int * to_zval_union (int *,TYPE_2__*,int ) ;

zval *sdl_guess_convert_zval(zval *ret, encodeTypePtr enc, xmlNodePtr data)
{
 sdlTypePtr type;

 type = enc->sdl_type;
 if (type == ((void*)0)) {
  return guess_zval_convert(ret, enc, data);
 }
 switch (type->kind) {
  case 129:
   if (type->encode && enc != &type->encode->details) {
    return master_to_zval_int(ret, type->encode, data);
   } else {
    return guess_zval_convert(ret, enc, data);
   }
   break;
  case 131:
   return to_zval_list(ret, enc, data);
  case 128:
   return to_zval_union(ret, enc, data);
  case 133:
  case 130:
  case 132:
   if (type->encode &&
       (type->encode->details.type == IS_ARRAY ||
        type->encode->details.type == SOAP_ENC_ARRAY)) {
    return to_zval_array(ret, enc, data);
   }
   return to_zval_object(ret, enc, data);
  default:
    soap_error0(E_ERROR, "Encoding: Internal Error");
   return guess_zval_convert(ret, enc, data);
 }
}
