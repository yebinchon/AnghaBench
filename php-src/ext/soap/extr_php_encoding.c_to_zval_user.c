
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int xmlNodePtr ;
typedef int xmlBufferPtr ;
typedef TYPE_2__* encodeTypePtr ;
struct TYPE_5__ {TYPE_1__* map; } ;
struct TYPE_4__ {int to_zval; } ;


 scalar_t__ EG (int ) ;
 int E_ERROR ;
 scalar_t__ FAILURE ;
 scalar_t__ IS_UNDEF ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ call_user_function (int *,int *,int *,int *,int,int *) ;
 int exception ;
 int soap_error0 (int ,char*) ;
 scalar_t__ xmlBufferContent (int ) ;
 int xmlBufferCreate () ;
 int xmlBufferFree (int ) ;
 int xmlCopyNode (int ,int) ;
 int xmlFreeNode (int ) ;
 int xmlNodeDump (int ,int *,int ,int ,int ) ;
 int zval_ptr_dtor (int *) ;

zval *to_zval_user(zval *ret, encodeTypePtr type, xmlNodePtr node)
{
 if (type && type->map && Z_TYPE(type->map->to_zval) != IS_UNDEF) {
  xmlBufferPtr buf;
  zval data;
  xmlNodePtr copy;

  copy = xmlCopyNode(node, 1);
  buf = xmlBufferCreate();
  xmlNodeDump(buf, ((void*)0), copy, 0, 0);
  ZVAL_STRING(&data, (char*)xmlBufferContent(buf));
  xmlBufferFree(buf);
  xmlFreeNode(copy);

  if (call_user_function(((void*)0), ((void*)0), &type->map->to_zval, ret, 1, &data) == FAILURE) {
   soap_error0(E_ERROR, "Encoding: Error calling from_xml callback");
  } else if (EG(exception)) {
   ZVAL_NULL(ret);
  }
  zval_ptr_dtor(&data);
 } else {
  ZVAL_NULL(ret);
 }
 return ret;
}
