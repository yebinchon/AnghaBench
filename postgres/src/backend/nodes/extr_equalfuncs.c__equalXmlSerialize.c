
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmlSerialize ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int expr ;
 int location ;
 int typeName ;
 int xmloption ;

__attribute__((used)) static bool
_equalXmlSerialize(const XmlSerialize *a, const XmlSerialize *b)
{
 COMPARE_SCALAR_FIELD(xmloption);
 COMPARE_NODE_FIELD(expr);
 COMPARE_NODE_FIELD(typeName);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
