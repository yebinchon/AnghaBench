
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int maxvalues; scalar_t__ nvalues; int * categories; int * keys; } ;
typedef TYPE_1__ KeyArray ;
typedef int GinNullCategory ;
typedef int Datum ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static void
initKeyArray(KeyArray *keys, int32 maxvalues)
{
 keys->keys = (Datum *) palloc(sizeof(Datum) * maxvalues);
 keys->categories = (GinNullCategory *)
  palloc(sizeof(GinNullCategory) * maxvalues);
 keys->nvalues = 0;
 keys->maxvalues = maxvalues;
}
