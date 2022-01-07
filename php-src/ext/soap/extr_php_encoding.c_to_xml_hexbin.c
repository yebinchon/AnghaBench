
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int BAD_CAST (char*) ;
 int FIND_ZVAL_NULL (int *,int ,int) ;
 scalar_t__ IS_STRING ;
 int SOAP_ENCODED ;
 int ZVAL_STR (int *,int ) ;
 int Z_STRLEN_P (int *) ;
 scalar_t__* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int efree (unsigned char*) ;
 scalar_t__ safe_emalloc (int,int,int) ;
 int set_ns_and_type (int ,int ) ;
 int xmlAddChild (int ,int ) ;
 int xmlNewNode (int *,int ) ;
 int xmlNewTextLen (unsigned char*,int) ;
 int zval_get_string_func (int *) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static xmlNodePtr to_xml_hexbin(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 static char hexconvtab[] = "0123456789ABCDEF";
 xmlNodePtr ret, text;
 unsigned char *str;
 zval tmp;
 size_t i, j;

 ret = xmlNewNode(((void*)0), BAD_CAST("BOGUS"));
 xmlAddChild(parent, ret);
 FIND_ZVAL_NULL(data, ret, style);

 if (Z_TYPE_P(data) != IS_STRING) {
  ZVAL_STR(&tmp, zval_get_string_func(data));
  data = &tmp;
 }
 str = (unsigned char *) safe_emalloc(Z_STRLEN_P(data) * 2, sizeof(char), 1);

 for (i = j = 0; i < Z_STRLEN_P(data); i++) {
  str[j++] = hexconvtab[((unsigned char)Z_STRVAL_P(data)[i]) >> 4];
  str[j++] = hexconvtab[((unsigned char)Z_STRVAL_P(data)[i]) & 15];
 }
 str[j] = '\0';

 text = xmlNewTextLen(str, Z_STRLEN_P(data) * 2 * sizeof(char));
 xmlAddChild(ret, text);
 efree(str);
 if (data == &tmp) {
  zval_ptr_dtor_str(&tmp);
 }

 if (style == SOAP_ENCODED) {
  set_ns_and_type(ret, type);
 }
 return ret;
}
