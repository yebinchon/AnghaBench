
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int List ;


 int ExecTypeFromTLInternal (int *,int) ;

TupleDesc
ExecTypeFromTL(List *targetList)
{
 return ExecTypeFromTLInternal(targetList, 0);
}
