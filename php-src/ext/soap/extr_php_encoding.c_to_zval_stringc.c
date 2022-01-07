
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlBufferPtr ;
typedef int encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int * next; } ;


 int E_ERROR ;
 int FIND_XML_NULL (TYPE_2__*,int *) ;
 int * SOAP_GLOBAL (int ) ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 int encoding ;
 int soap_error0 (int ,char*) ;
 int whiteSpace_collapse (scalar_t__) ;
 scalar_t__ xmlBufferContent (int ) ;
 int xmlBufferCreate () ;
 int xmlBufferCreateStatic (scalar_t__,int ) ;
 int xmlBufferFree (int ) ;
 int xmlCharEncOutFunc (int *,int ,int ) ;
 int xmlStrlen (scalar_t__) ;

__attribute__((used)) static zval *to_zval_stringc(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
 ZVAL_NULL(ret);
 FIND_XML_NULL(data, ret);
 if (data && data->children) {
  if (data->children->type == XML_TEXT_NODE && data->children->next == ((void*)0)) {
   whiteSpace_collapse(data->children->content);
   if (SOAP_GLOBAL(encoding) != ((void*)0)) {
    xmlBufferPtr in = xmlBufferCreateStatic(data->children->content, xmlStrlen(data->children->content));
    xmlBufferPtr out = xmlBufferCreate();
    int n = xmlCharEncOutFunc(SOAP_GLOBAL(encoding), out, in);

    if (n >= 0) {
     ZVAL_STRING(ret, (char*)xmlBufferContent(out));
    } else {
     ZVAL_STRING(ret, (char*)data->children->content);
    }
    xmlBufferFree(out);
    xmlBufferFree(in);
   } else {
    ZVAL_STRING(ret, (char*)data->children->content);
   }
  } else if (data->children->type == XML_CDATA_SECTION_NODE && data->children->next == ((void*)0)) {
   ZVAL_STRING(ret, (char*)data->children->content);
  } else {
   soap_error0(E_ERROR, "Encoding: Violation of encoding rules");
  }
 } else {
  ZVAL_EMPTY_STRING(ret);
 }
 return ret;
}
