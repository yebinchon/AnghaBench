
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;
typedef int encodePtr ;


 int IS_NULL ;
 int Z_TYPE_P (int *) ;
 int get_conversion (int ) ;
 int master_to_xml_int (int ,int *,int,int ,int ) ;

__attribute__((used)) static xmlNodePtr guess_xml_convert(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 encodePtr enc;
 xmlNodePtr ret;

 if (data) {
  enc = get_conversion(Z_TYPE_P(data));
 } else {
  enc = get_conversion(IS_NULL);
 }
 ret = master_to_xml_int(enc, data, style, parent, 0);





 return ret;
}
