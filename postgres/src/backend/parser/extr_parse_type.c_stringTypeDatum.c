
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
typedef int Type ;
struct TYPE_2__ {int typinput; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_type ;
typedef int Datum ;


 int GETSTRUCT (int ) ;
 int OidInputFunctionCall (int ,char*,int ,int ) ;
 int getTypeIOParam (int ) ;

Datum
stringTypeDatum(Type tp, char *string, int32 atttypmod)
{
 Form_pg_type typform = (Form_pg_type) GETSTRUCT(tp);
 Oid typinput = typform->typinput;
 Oid typioparam = getTypeIOParam(tp);

 return OidInputFunctionCall(typinput, string, typioparam, atttypmod);
}
