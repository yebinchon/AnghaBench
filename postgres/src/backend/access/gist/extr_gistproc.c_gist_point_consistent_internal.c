
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_10__ {TYPE_2__ low; TYPE_1__ high; } ;
struct TYPE_9__ {int y; int x; } ;
typedef int StrategyNumber ;
typedef TYPE_3__ Point ;
typedef TYPE_4__ BOX ;


 int ERROR ;
 int FPeq (int ,int ) ;
 int FPge (int ,int ) ;
 int FPgt (int ,int ) ;
 int FPle (int ,int ) ;
 int FPlt (int ,int ) ;





 int elog (int ,char*,int) ;

__attribute__((used)) static bool
gist_point_consistent_internal(StrategyNumber strategy,
          bool isLeaf, BOX *key, Point *query)
{
 bool result = 0;

 switch (strategy)
 {
  case 130:
   result = FPlt(key->low.x, query->x);
   break;
  case 129:
   result = FPgt(key->high.x, query->x);
   break;
  case 132:
   result = FPgt(key->high.y, query->y);
   break;
  case 131:
   result = FPlt(key->low.y, query->y);
   break;
  case 128:
   if (isLeaf)
   {

    result = (FPeq(key->low.x, query->x) &&
        FPeq(key->low.y, query->y));
   }
   else
   {
    result = (FPle(query->x, key->high.x) &&
        FPge(query->x, key->low.x) &&
        FPle(query->y, key->high.y) &&
        FPge(query->y, key->low.y));
   }
   break;
  default:
   elog(ERROR, "unrecognized strategy number: %d", strategy);
   result = 0;
   break;
 }

 return result;
}
