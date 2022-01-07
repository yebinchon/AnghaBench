
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nvalues; int maxvalues; int * categories; int * keys; } ;
typedef TYPE_1__ KeyArray ;
typedef int GinNullCategory ;
typedef int Datum ;


 scalar_t__ repalloc (int *,int) ;

__attribute__((used)) static void
addDatum(KeyArray *keys, Datum datum, GinNullCategory category)
{
 if (keys->nvalues >= keys->maxvalues)
 {
  keys->maxvalues *= 2;
  keys->keys = (Datum *)
   repalloc(keys->keys, sizeof(Datum) * keys->maxvalues);
  keys->categories = (GinNullCategory *)
   repalloc(keys->categories, sizeof(GinNullCategory) * keys->maxvalues);
 }

 keys->keys[keys->nvalues] = datum;
 keys->categories[keys->nvalues] = category;
 keys->nvalues++;
}
