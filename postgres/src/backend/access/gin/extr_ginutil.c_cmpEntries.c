
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int datum; scalar_t__ isnull; } ;
typedef TYPE_1__ keyEntryData ;
struct TYPE_4__ {int haveDups; int collation; int cmpDatumFunc; } ;
typedef TYPE_2__ cmpEntriesArg ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int ,int ,int ,int ) ;

__attribute__((used)) static int
cmpEntries(const void *a, const void *b, void *arg)
{
 const keyEntryData *aa = (const keyEntryData *) a;
 const keyEntryData *bb = (const keyEntryData *) b;
 cmpEntriesArg *data = (cmpEntriesArg *) arg;
 int res;

 if (aa->isnull)
 {
  if (bb->isnull)
   res = 0;
  else
   res = 1;
 }
 else if (bb->isnull)
  res = -1;
 else
  res = DatumGetInt32(FunctionCall2Coll(data->cmpDatumFunc,
             data->collation,
             aa->datum, bb->datum));






 if (res == 0)
  data->haveDups = 1;

 return res;
}
