
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;


 scalar_t__ BuildListOfServicesToStop (int **,int *) ;

LPWSTR
GetListOfServicesToStop(LPWSTR lpServiceName)
{
    LPWSTR lpServiceList = ((void*)0);


    if (BuildListOfServicesToStop(&lpServiceList, lpServiceName))
        return lpServiceList;
    else
        return ((void*)0);
}
