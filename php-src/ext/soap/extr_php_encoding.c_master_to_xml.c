
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlNodePtr ;
typedef int encodePtr ;


 int master_to_xml_int (int ,int *,int,int ,int) ;

xmlNodePtr master_to_xml(encodePtr encode, zval *data, int style, xmlNodePtr parent)
{
 return master_to_xml_int(encode, data, style, parent, 1);
}
