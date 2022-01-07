
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LargeObjectDesc ;


 int Assert (int ) ;
 int MemSet (int **,int ,int) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int ** cookies ;
 int cookies_size ;
 int fscxt ;
 scalar_t__ repalloc (int **,int) ;

__attribute__((used)) static int
newLOfd(LargeObjectDesc *lobjCookie)
{
 int i,
    newsize;


 for (i = 0; i < cookies_size; i++)
 {
  if (cookies[i] == ((void*)0))
  {
   cookies[i] = lobjCookie;
   return i;
  }
 }


 if (cookies_size <= 0)
 {

  i = 0;
  newsize = 64;
  cookies = (LargeObjectDesc **)
   MemoryContextAllocZero(fscxt, newsize * sizeof(LargeObjectDesc *));
  cookies_size = newsize;
 }
 else
 {

  i = cookies_size;
  newsize = cookies_size * 2;
  cookies = (LargeObjectDesc **)
   repalloc(cookies, newsize * sizeof(LargeObjectDesc *));
  MemSet(cookies + cookies_size, 0,
      (newsize - cookies_size) * sizeof(LargeObjectDesc *));
  cookies_size = newsize;
 }

 Assert(cookies[i] == ((void*)0));
 cookies[i] = lobjCookie;
 return i;
}
