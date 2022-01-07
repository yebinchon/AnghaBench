
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int BAD_CAST (char*) ;
 int EG (int ) ;
 int FIND_ZVAL_NULL (int *,int ,int) ;
 scalar_t__ MAX_LENGTH_OF_DOUBLE ;
 int SOAP_ENCODED ;
 int ZVAL_DOUBLE (int *,int ) ;
 int Z_DVAL (int ) ;
 int efree (char*) ;
 int php_gcvt (int ,int,char,char,char*) ;
 int precision ;
 scalar_t__ safe_emalloc (int,int,scalar_t__) ;
 int set_ns_and_type (int ,int ) ;
 int strlen (char*) ;
 int xmlAddChild (int ,int ) ;
 int xmlNewNode (int *,int ) ;
 int xmlNodeSetContentLen (int ,int ,int ) ;
 int zval_get_double (int *) ;

__attribute__((used)) static xmlNodePtr to_xml_double(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 xmlNodePtr ret;
 zval tmp;
 char *str;

 ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 xmlAddChild(parent, ret);
 FIND_ZVAL_NULL(data, ret, style);

 ZVAL_DOUBLE(&tmp, zval_get_double(data));

 str = (char *) safe_emalloc(EG(precision) >= 0 ? EG(precision) : 17, 1, MAX_LENGTH_OF_DOUBLE + 1);
 php_gcvt(Z_DVAL(tmp), EG(precision), '.', 'E', str);
 xmlNodeSetContentLen(ret, BAD_CAST(str), strlen(str));
 efree(str);

 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, type);
 }
 return ret;
}
