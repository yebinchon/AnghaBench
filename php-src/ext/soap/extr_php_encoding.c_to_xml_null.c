
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int BAD_CAST (char*) ;
 int SOAP_ENCODED ;
 int set_xsi_nil (int ) ;
 int xmlAddChild (int ,int ) ;
 int xmlNewNode (int *,int ) ;

__attribute__((used)) static xmlNodePtr to_xml_null(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 xmlNodePtr ret;

 ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 xmlAddChild(parent, ret);
 if (style == SOAP_ENCODED) {
  set_xsi_nil(ret);
 }
 return ret;
}
