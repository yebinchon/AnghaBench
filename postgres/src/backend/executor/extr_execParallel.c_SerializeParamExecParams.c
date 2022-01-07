
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int16 ;
typedef int dsa_pointer ;
typedef int dsa_area ;
struct TYPE_8__ {TYPE_1__* es_plannedstmt; TYPE_2__* es_param_exec_vals; } ;
struct TYPE_7__ {int isnull; int value; } ;
struct TYPE_6__ {int paramExecTypes; } ;
typedef int Size ;
typedef TYPE_2__ ParamExecData ;
typedef int Oid ;
typedef TYPE_3__ EState ;
typedef int Datum ;
typedef int Bitmapset ;


 int EstimateParamExecSpace (TYPE_3__*,int *) ;
 scalar_t__ OidIsValid (int ) ;
 int bms_next_member (int *,int) ;
 int bms_num_members (int *) ;
 int datumSerialize (int ,int ,int,int,char**) ;
 int dsa_allocate (int *,int ) ;
 char* dsa_get_address (int *,int ) ;
 int get_typlenbyval (int ,int*,int*) ;
 int list_nth_oid (int ,int) ;
 int memcpy (char*,int*,int) ;

__attribute__((used)) static dsa_pointer
SerializeParamExecParams(EState *estate, Bitmapset *params, dsa_area *area)
{
 Size size;
 int nparams;
 int paramid;
 ParamExecData *prm;
 dsa_pointer handle;
 char *start_address;


 size = EstimateParamExecSpace(estate, params);
 handle = dsa_allocate(area, size);
 start_address = dsa_get_address(area, handle);


 nparams = bms_num_members(params);
 memcpy(start_address, &nparams, sizeof(int));
 start_address += sizeof(int);


 paramid = -1;
 while ((paramid = bms_next_member(params, paramid)) >= 0)
 {
  Oid typeOid;
  int16 typLen;
  bool typByVal;

  prm = &(estate->es_param_exec_vals[paramid]);
  typeOid = list_nth_oid(estate->es_plannedstmt->paramExecTypes,
          paramid);


  memcpy(start_address, &paramid, sizeof(int));
  start_address += sizeof(int);


  if (OidIsValid(typeOid))
   get_typlenbyval(typeOid, &typLen, &typByVal);
  else
  {

   typLen = sizeof(Datum);
   typByVal = 1;
  }
  datumSerialize(prm->value, prm->isnull, typByVal, typLen,
        &start_address);
 }

 return handle;
}
