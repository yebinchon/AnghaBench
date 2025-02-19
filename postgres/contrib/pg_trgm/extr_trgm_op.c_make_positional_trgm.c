
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trgm ;
struct TYPE_3__ {int index; int trg; } ;
typedef TYPE_1__ pos_trgm ;


 int memcpy (int *,int *,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static pos_trgm *
make_positional_trgm(trgm *trg1, int len1, trgm *trg2, int len2)
{
 pos_trgm *result;
 int i,
    len = len1 + len2;

 result = (pos_trgm *) palloc(sizeof(pos_trgm) * len);

 for (i = 0; i < len1; i++)
 {
  memcpy(&result[i].trg, &trg1[i], sizeof(trgm));
  result[i].index = -1;
 }

 for (i = 0; i < len2; i++)
 {
  memcpy(&result[i + len1].trg, &trg2[i], sizeof(trgm));
  result[i + len1].index = i;
 }

 return result;
}
