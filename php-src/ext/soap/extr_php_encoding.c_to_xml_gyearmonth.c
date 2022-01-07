
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodeTypePtr ;


 int to_xml_datetime_ex (int ,int *,char*,int,int ) ;

__attribute__((used)) static xmlNodePtr to_xml_gyearmonth(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
 return to_xml_datetime_ex(type, data, "%Y-%m", style, parent);
}
