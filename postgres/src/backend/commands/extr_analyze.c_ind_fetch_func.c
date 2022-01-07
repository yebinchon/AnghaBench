
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* VacAttrStatsP ;
struct TYPE_3__ {int rowstride; int* exprnulls; int * exprvals; } ;
typedef int Datum ;



__attribute__((used)) static Datum
ind_fetch_func(VacAttrStatsP stats, int rownum, bool *isNull)
{
 int i;


 i = rownum * stats->rowstride;
 *isNull = stats->exprnulls[i];
 return stats->exprvals[i];
}
