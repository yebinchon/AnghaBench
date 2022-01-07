
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boolop; } ;
typedef int StringInfo ;
typedef TYPE_1__ BoolExpr ;





 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int appendStringInfoString (int ,char*) ;
 int args ;
 int location ;
 int outToken (int ,char*) ;

__attribute__((used)) static void
_outBoolExpr(StringInfo str, const BoolExpr *node)
{
 char *opstr = ((void*)0);

 WRITE_NODE_TYPE("BOOLEXPR");


 switch (node->boolop)
 {
  case 130:
   opstr = "and";
   break;
  case 128:
   opstr = "or";
   break;
  case 129:
   opstr = "not";
   break;
 }
 appendStringInfoString(str, " :boolop ");
 outToken(str, opstr);

 WRITE_NODE_FIELD(args);
 WRITE_LOCATION_FIELD(location);
}
