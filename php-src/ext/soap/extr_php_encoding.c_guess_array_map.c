
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;
typedef int * encodePtr ;


 int APACHE_MAP ;
 scalar_t__ IS_ARRAY ;
 int IS_NULL ;
 int SOAP_ENC_ARRAY ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * get_conversion (int ) ;
 scalar_t__ is_map (int *) ;
 int master_to_xml (int *,int *,int,int ) ;

__attribute__((used)) static xmlNodePtr guess_array_map(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 encodePtr enc = ((void*)0);

 if (data && Z_TYPE_P(data) == IS_ARRAY) {
  if (is_map(data)) {
   enc = get_conversion(APACHE_MAP);
  } else {
   enc = get_conversion(SOAP_ENC_ARRAY);
  }
 }
 if (!enc) {
  enc = get_conversion(IS_NULL);
 }

 return master_to_xml(enc, data, style, parent);
}
