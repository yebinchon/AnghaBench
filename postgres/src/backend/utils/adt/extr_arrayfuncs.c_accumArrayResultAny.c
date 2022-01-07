
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int arraystate; scalar_t__ scalarstate; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int Datum ;
typedef TYPE_1__ ArrayBuildStateAny ;


 int accumArrayResult (scalar_t__,int ,int,int ,int ) ;
 int accumArrayResultArr (int ,int ,int,int ,int ) ;
 TYPE_1__* initArrayResultAny (int ,int ,int) ;

ArrayBuildStateAny *
accumArrayResultAny(ArrayBuildStateAny *astate,
     Datum dvalue, bool disnull,
     Oid input_type,
     MemoryContext rcontext)
{
 if (astate == ((void*)0))
  astate = initArrayResultAny(input_type, rcontext, 1);

 if (astate->scalarstate)
  (void) accumArrayResult(astate->scalarstate,
        dvalue, disnull,
        input_type, rcontext);
 else
  (void) accumArrayResultArr(astate->arraystate,
           dvalue, disnull,
           input_type, rcontext);

 return astate;
}
