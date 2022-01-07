
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internalerrposition (int) ;
 int internalerrquery (int *) ;
 int pg_mbstrlen_with_len (int *,int) ;
 int * scanorig ;

int
plpgsql_scanner_errposition(int location)
{
 int pos;

 if (location < 0 || scanorig == ((void*)0))
  return 0;


 pos = pg_mbstrlen_with_len(scanorig, location) + 1;

 (void) internalerrposition(pos);

 return internalerrquery(scanorig);
}
