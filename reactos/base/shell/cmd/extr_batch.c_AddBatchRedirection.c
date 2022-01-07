
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {TYPE_1__* RedirList; } ;
struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ REDIRECTION ;


 TYPE_2__* bc ;

VOID AddBatchRedirection(REDIRECTION **RedirList)
{
    REDIRECTION **ListEnd;


    ListEnd = RedirList;
    while (*ListEnd)
        ListEnd = &(*ListEnd)->Next;
    *ListEnd = bc->RedirList;
    bc->RedirList = *RedirList;



    *RedirList = ((void*)0);
}
