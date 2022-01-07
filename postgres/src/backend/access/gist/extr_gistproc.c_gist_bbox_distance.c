
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_3__ {int key; } ;
typedef int StrategyNumber ;
typedef TYPE_1__ GISTENTRY ;
typedef int Datum ;


 int DatumGetBoxP (int ) ;
 int DatumGetPointP (int ) ;
 int ERROR ;
 int GeoStrategyNumberOffset ;

 double computeDistance (int,int ,int ) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static float8
gist_bbox_distance(GISTENTRY *entry, Datum query, StrategyNumber strategy)
{
 float8 distance;
 StrategyNumber strategyGroup = strategy / GeoStrategyNumberOffset;

 switch (strategyGroup)
 {
  case 128:
   distance = computeDistance(0,
            DatumGetBoxP(entry->key),
            DatumGetPointP(query));
   break;
  default:
   elog(ERROR, "unrecognized strategy number: %d", strategy);
   distance = 0.0;
 }

 return distance;
}
