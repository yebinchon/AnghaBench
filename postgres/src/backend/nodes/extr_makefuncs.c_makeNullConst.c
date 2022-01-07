
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef scalar_t__ int16 ;
typedef int Oid ;
typedef int Datum ;
typedef int Const ;


 int get_typlenbyval (int ,scalar_t__*,int*) ;
 int * makeConst (int ,int ,int ,int,int ,int,int) ;

Const *
makeNullConst(Oid consttype, int32 consttypmod, Oid constcollid)
{
 int16 typLen;
 bool typByVal;

 get_typlenbyval(consttype, &typLen, &typByVal);
 return makeConst(consttype,
      consttypmod,
      constcollid,
      (int) typLen,
      (Datum) 0,
      1,
      typByVal);
}
