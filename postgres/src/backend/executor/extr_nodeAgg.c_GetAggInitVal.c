
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int OidInputFunctionCall (int ,char*,int ,int) ;
 char* TextDatumGetCString (int ) ;
 int getTypeInputInfo (int ,int *,int *) ;
 int pfree (char*) ;

__attribute__((used)) static Datum
GetAggInitVal(Datum textInitVal, Oid transtype)
{
 Oid typinput,
    typioparam;
 char *strInitVal;
 Datum initVal;

 getTypeInputInfo(transtype, &typinput, &typioparam);
 strInitVal = TextDatumGetCString(textInitVal);
 initVal = OidInputFunctionCall(typinput, strInitVal,
           typioparam, -1);
 pfree(strInitVal);
 return initVal;
}
