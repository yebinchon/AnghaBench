
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PQExpBuffer ;


 int * createPQExpBuffer () ;
 int resetPQExpBuffer (int *) ;

__attribute__((used)) static PQExpBuffer
defaultGetLocalPQExpBuffer(void)
{
 static PQExpBuffer id_return = ((void*)0);

 if (id_return)
 {

  resetPQExpBuffer(id_return);
 }
 else
 {

  id_return = createPQExpBuffer();
 }

 return id_return;
}
