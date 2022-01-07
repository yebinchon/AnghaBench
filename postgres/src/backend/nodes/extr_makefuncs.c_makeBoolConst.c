
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int BOOLOID ;
 int BoolGetDatum (int) ;
 int InvalidOid ;
 scalar_t__ makeConst (int ,int,int ,int,int ,int,int) ;

Node *
makeBoolConst(bool value, bool isnull)
{

 return (Node *) makeConst(BOOLOID, -1, InvalidOid, 1,
         BoolGetDatum(value), isnull, 1);
}
