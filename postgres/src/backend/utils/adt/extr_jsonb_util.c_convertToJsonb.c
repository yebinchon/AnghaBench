
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ JsonbValue ;
typedef int Jsonb ;
typedef int JEntry ;


 int Assert (int) ;
 int SET_VARSIZE (int *,int ) ;
 int VARHDRSZ ;
 int convertJsonbValue (TYPE_1__*,int *,TYPE_2__*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ jbvBinary ;
 int reserveFromBuffer (TYPE_1__*,int ) ;

__attribute__((used)) static Jsonb *
convertToJsonb(JsonbValue *val)
{
 StringInfoData buffer;
 JEntry jentry;
 Jsonb *res;


 Assert(val->type != jbvBinary);


 initStringInfo(&buffer);


 reserveFromBuffer(&buffer, VARHDRSZ);

 convertJsonbValue(&buffer, &jentry, val, 0);







 res = (Jsonb *) buffer.data;

 SET_VARSIZE(res, buffer.len);

 return res;
}
