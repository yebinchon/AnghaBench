
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int QueryItem ;


 int ERROR ;
 int elog (int ,char*) ;
 int findoprnd_recurse (int *,int*,int,int*) ;

__attribute__((used)) static void
findoprnd(QueryItem *ptr, int size, bool *needcleanup)
{
 uint32 pos;

 *needcleanup = 0;
 pos = 0;
 findoprnd_recurse(ptr, &pos, size, needcleanup);

 if (pos != size)
  elog(ERROR, "malformed tsquery: extra nodes");
}
