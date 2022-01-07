
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Aggref ;


 int AggSplit ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_CHAR_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int aggargtypes ;
 int aggcollid ;
 int aggdirectargs ;
 int aggdistinct ;
 int aggfilter ;
 int aggfnoid ;
 int aggkind ;
 int agglevelsup ;
 int aggorder ;
 int aggsplit ;
 int aggstar ;
 int aggtranstype ;
 int aggtype ;
 int aggvariadic ;
 int args ;
 int inputcollid ;
 int location ;

__attribute__((used)) static void
_outAggref(StringInfo str, const Aggref *node)
{
 WRITE_NODE_TYPE("AGGREF");

 WRITE_OID_FIELD(aggfnoid);
 WRITE_OID_FIELD(aggtype);
 WRITE_OID_FIELD(aggcollid);
 WRITE_OID_FIELD(inputcollid);
 WRITE_OID_FIELD(aggtranstype);
 WRITE_NODE_FIELD(aggargtypes);
 WRITE_NODE_FIELD(aggdirectargs);
 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(aggorder);
 WRITE_NODE_FIELD(aggdistinct);
 WRITE_NODE_FIELD(aggfilter);
 WRITE_BOOL_FIELD(aggstar);
 WRITE_BOOL_FIELD(aggvariadic);
 WRITE_CHAR_FIELD(aggkind);
 WRITE_UINT_FIELD(agglevelsup);
 WRITE_ENUM_FIELD(aggsplit, AggSplit);
 WRITE_LOCATION_FIELD(location);
}
