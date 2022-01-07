
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int constbyval; int constlen; int constvalue; scalar_t__ constisnull; } ;
typedef int StringInfo ;
typedef TYPE_1__ Const ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int appendStringInfoString (int ,char*) ;
 int constbyval ;
 int constcollid ;
 int constisnull ;
 int constlen ;
 int consttype ;
 int consttypmod ;
 int location ;
 int outDatum (int ,int ,int ,int ) ;

__attribute__((used)) static void
_outConst(StringInfo str, const Const *node)
{
 WRITE_NODE_TYPE("CONST");

 WRITE_OID_FIELD(consttype);
 WRITE_INT_FIELD(consttypmod);
 WRITE_OID_FIELD(constcollid);
 WRITE_INT_FIELD(constlen);
 WRITE_BOOL_FIELD(constbyval);
 WRITE_BOOL_FIELD(constisnull);
 WRITE_LOCATION_FIELD(location);

 appendStringInfoString(str, " :constvalue ");
 if (node->constisnull)
  appendStringInfoString(str, "<>");
 else
  outDatum(str, node->constvalue, node->constlen, node->constbyval);
}
