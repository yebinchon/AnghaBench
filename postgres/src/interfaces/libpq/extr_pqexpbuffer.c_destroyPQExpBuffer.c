
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PQExpBuffer ;


 int free (scalar_t__) ;
 int termPQExpBuffer (scalar_t__) ;

void
destroyPQExpBuffer(PQExpBuffer str)
{
 if (str)
 {
  termPQExpBuffer(str);
  free(str);
 }
}
