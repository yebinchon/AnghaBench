
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmlExpr ;
typedef int StringInfo ;


 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
 int XmlExprOp ;
 int XmlOptionType ;
 int arg_names ;
 int args ;
 int location ;
 int name ;
 int named_args ;
 int op ;
 int type ;
 int typmod ;
 int xmloption ;

__attribute__((used)) static void
_outXmlExpr(StringInfo str, const XmlExpr *node)
{
 WRITE_NODE_TYPE("XMLEXPR");

 WRITE_ENUM_FIELD(op, XmlExprOp);
 WRITE_STRING_FIELD(name);
 WRITE_NODE_FIELD(named_args);
 WRITE_NODE_FIELD(arg_names);
 WRITE_NODE_FIELD(args);
 WRITE_ENUM_FIELD(xmloption, XmlOptionType);
 WRITE_OID_FIELD(type);
 WRITE_INT_FIELD(typmod);
 WRITE_LOCATION_FIELD(location);
}
