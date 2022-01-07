
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBufferData ;
typedef int * PQExpBuffer ;


 int initPQExpBuffer (int *) ;
 scalar_t__ malloc (int) ;

PQExpBuffer
createPQExpBuffer(void)
{
 PQExpBuffer res;

 res = (PQExpBuffer) malloc(sizeof(PQExpBufferData));
 if (res != ((void*)0))
  initPQExpBuffer(res);

 return res;
}
