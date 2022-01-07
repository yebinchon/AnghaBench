
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int bfree (char*) ;
 char* bmalloc (size_t) ;
 size_t fread (char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ os_ftelli64 (int *) ;
 size_t os_mbs_to_utf8_ptr (char*,size_t,char**) ;

size_t os_fread_mbs(FILE *file, char **pstr)
{
 size_t size = 0;
 size_t len = 0;

 fseek(file, 0, SEEK_END);
 size = (size_t)os_ftelli64(file);
 *pstr = ((void*)0);

 if (size > 0) {
  char *mbstr = bmalloc(size + 1);

  fseek(file, 0, SEEK_SET);
  size = fread(mbstr, 1, size, file);
  if (size == 0) {
   bfree(mbstr);
   return 0;
  }

  mbstr[size] = 0;
  len = os_mbs_to_utf8_ptr(mbstr, size, pstr);
  bfree(mbstr);
 }

 return len;
}
