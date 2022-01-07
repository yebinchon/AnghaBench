
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmlExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int arg_names ;
 int args ;
 int location ;
 int name ;
 int named_args ;
 int op ;
 int type ;
 int typmod ;
 int xmloption ;

__attribute__((used)) static bool
_equalXmlExpr(const XmlExpr *a, const XmlExpr *b)
{
 COMPARE_SCALAR_FIELD(op);
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(named_args);
 COMPARE_NODE_FIELD(arg_names);
 COMPARE_NODE_FIELD(args);
 COMPARE_SCALAR_FIELD(xmloption);
 COMPARE_SCALAR_FIELD(type);
 COMPARE_SCALAR_FIELD(typmod);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
