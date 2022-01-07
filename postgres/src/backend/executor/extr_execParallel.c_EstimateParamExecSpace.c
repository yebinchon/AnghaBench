
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {TYPE_1__* es_plannedstmt; TYPE_2__* es_param_exec_vals; } ;
struct TYPE_6__ {int isnull; int value; } ;
struct TYPE_5__ {int paramExecTypes; } ;
typedef int Size ;
typedef TYPE_2__ ParamExecData ;
typedef int Oid ;
typedef TYPE_3__ EState ;
typedef int Datum ;
typedef int Bitmapset ;


 scalar_t__ OidIsValid (int ) ;
 int add_size (int,int) ;
 int bms_next_member (int *,int) ;
 int datumEstimateSpace (int ,int ,int,int) ;
 int get_typlenbyval (int ,int*,int*) ;
 int list_nth_oid (int ,int) ;

__attribute__((used)) static Size
EstimateParamExecSpace(EState *estate, Bitmapset *params)
{
 int paramid;
 Size sz = sizeof(int);

 paramid = -1;
 while ((paramid = bms_next_member(params, paramid)) >= 0)
 {
  Oid typeOid;
  int16 typLen;
  bool typByVal;
  ParamExecData *prm;

  prm = &(estate->es_param_exec_vals[paramid]);
  typeOid = list_nth_oid(estate->es_plannedstmt->paramExecTypes,
          paramid);

  sz = add_size(sz, sizeof(int));


  if (OidIsValid(typeOid))
   get_typlenbyval(typeOid, &typLen, &typByVal);
  else
  {

   typLen = sizeof(Datum);
   typByVal = 1;
  }
  sz = add_size(sz,
       datumEstimateSpace(prm->value, prm->isnull,
           typByVal, typLen));
 }
 return sz;
}
