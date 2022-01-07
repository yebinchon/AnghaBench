
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmlSerialize ;
typedef int StringInfo ;


 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int XmlOptionType ;
 int expr ;
 int location ;
 int typeName ;
 int xmloption ;

__attribute__((used)) static void
_outXmlSerialize(StringInfo str, const XmlSerialize *node)
{
 WRITE_NODE_TYPE("XMLSERIALIZE");

 WRITE_ENUM_FIELD(xmloption, XmlOptionType);
 WRITE_NODE_FIELD(expr);
 WRITE_NODE_FIELD(typeName);
 WRITE_LOCATION_FIELD(location);
}
