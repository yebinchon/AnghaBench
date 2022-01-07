
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MemoryContextDelete (int *) ;
 int close_lo_relation (int) ;
 int ** cookies ;
 int cookies_size ;
 int deleteLOfd (int) ;
 int * fscxt ;
 int inv_close (int *) ;

void
AtEOXact_LargeObject(bool isCommit)
{
 int i;

 if (fscxt == ((void*)0))
  return;





 for (i = 0; i < cookies_size; i++)
 {
  if (cookies[i] != ((void*)0))
  {
   if (isCommit)
    inv_close(cookies[i]);
   deleteLOfd(i);
  }
 }


 cookies = ((void*)0);
 cookies_size = 0;


 MemoryContextDelete(fscxt);
 fscxt = ((void*)0);


 close_lo_relation(isCommit);
}
