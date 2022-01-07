
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {int atttypid; } ;
struct TYPE_3__ {int rd_att; } ;
typedef int Oid ;


 int AssertArg (int) ;
 int DEBUG4 ;
 int MAXATTR ;
 int OidInputFunctionCall (int ,char*,int ,int) ;
 int OidOutputFunctionCall (int ,int ) ;
 TYPE_2__* TupleDescAttr (int ,int) ;
 int boot_get_type_io_data (int ,int *,int*,char*,char*,int *,int *,int *) ;
 TYPE_1__* boot_reldesc ;
 int elog (int ,char*,int,char*) ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,int ) ;
 int * values ;

void
InsertOneValue(char *value, int i)
{
 Oid typoid;
 int16 typlen;
 bool typbyval;
 char typalign;
 char typdelim;
 Oid typioparam;
 Oid typinput;
 Oid typoutput;

 AssertArg(i >= 0 && i < MAXATTR);

 elog(DEBUG4, "inserting column %d value \"%s\"", i, value);

 typoid = TupleDescAttr(boot_reldesc->rd_att, i)->atttypid;

 boot_get_type_io_data(typoid,
        &typlen, &typbyval, &typalign,
        &typdelim, &typioparam,
        &typinput, &typoutput);

 values[i] = OidInputFunctionCall(typinput, value, typioparam, -1);





 ereport(DEBUG4,
   (errmsg_internal("inserted -> %s",
        OidOutputFunctionCall(typoutput, values[i]))));
}
