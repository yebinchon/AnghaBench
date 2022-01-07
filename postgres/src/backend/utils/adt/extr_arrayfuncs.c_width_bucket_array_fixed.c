
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_9__ {int typlen; int typbyval; int cmp_proc_finfo; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_10__ {int isnull; TYPE_1__* args; } ;
struct TYPE_8__ {int isnull; int value; } ;
typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int ArrayGetNItems (int ,int ) ;
 scalar_t__ DatumGetInt32 (int ) ;
 int FunctionCallInvoke (TYPE_4__*) ;
 int InitFunctionCallInfoData (TYPE_4__,int *,int,int ,int *,int *) ;
 int LOCAL_FCINFO (TYPE_4__*,int) ;
 int fetch_att (char*,int,int) ;
 TYPE_4__* locfcinfo ;

__attribute__((used)) static int
width_bucket_array_fixed(Datum operand,
       ArrayType *thresholds,
       Oid collation,
       TypeCacheEntry *typentry)
{
 LOCAL_FCINFO(locfcinfo, 2);
 char *thresholds_data;
 int typlen = typentry->typlen;
 bool typbyval = typentry->typbyval;
 int left;
 int right;





 thresholds_data = (char *) ARR_DATA_PTR(thresholds);

 InitFunctionCallInfoData(*locfcinfo, &typentry->cmp_proc_finfo, 2,
        collation, ((void*)0), ((void*)0));


 left = 0;
 right = ArrayGetNItems(ARR_NDIM(thresholds), ARR_DIMS(thresholds));
 while (left < right)
 {
  int mid = (left + right) / 2;
  char *ptr;
  int32 cmpresult;

  ptr = thresholds_data + mid * typlen;

  locfcinfo->args[0].value = operand;
  locfcinfo->args[0].isnull = 0;
  locfcinfo->args[1].value = fetch_att(ptr, typbyval, typlen);
  locfcinfo->args[1].isnull = 0;
  locfcinfo->isnull = 0;

  cmpresult = DatumGetInt32(FunctionCallInvoke(locfcinfo));

  if (cmpresult < 0)
   right = mid;
  else
   left = mid + 1;
 }

 return left;
}
