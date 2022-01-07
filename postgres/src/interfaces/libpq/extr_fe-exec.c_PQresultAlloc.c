
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 void* pqResultAlloc (int *,size_t,int) ;

void *
PQresultAlloc(PGresult *res, size_t nBytes)
{
 return pqResultAlloc(res, nBytes, 1);
}
