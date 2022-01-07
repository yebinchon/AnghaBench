
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Aggref ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
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
 int aggtype ;
 int aggvariadic ;
 int args ;
 int inputcollid ;
 int location ;

__attribute__((used)) static bool
_equalAggref(const Aggref *a, const Aggref *b)
{
 COMPARE_SCALAR_FIELD(aggfnoid);
 COMPARE_SCALAR_FIELD(aggtype);
 COMPARE_SCALAR_FIELD(aggcollid);
 COMPARE_SCALAR_FIELD(inputcollid);

 COMPARE_NODE_FIELD(aggargtypes);
 COMPARE_NODE_FIELD(aggdirectargs);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(aggorder);
 COMPARE_NODE_FIELD(aggdistinct);
 COMPARE_NODE_FIELD(aggfilter);
 COMPARE_SCALAR_FIELD(aggstar);
 COMPARE_SCALAR_FIELD(aggvariadic);
 COMPARE_SCALAR_FIELD(aggkind);
 COMPARE_SCALAR_FIELD(agglevelsup);
 COMPARE_SCALAR_FIELD(aggsplit);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
