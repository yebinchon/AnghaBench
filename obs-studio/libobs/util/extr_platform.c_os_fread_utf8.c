
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t off_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ astrcmp_n (char*,char*,int) ;
 int bfree (char*) ;
 char* bmalloc (size_t) ;
 size_t fread (char*,int,size_t,int *) ;
 int fseek (int *,size_t,int ) ;
 scalar_t__ os_ftelli64 (int *) ;

size_t os_fread_utf8(FILE *file, char **pstr)
{
 size_t size = 0;
 size_t len = 0;

 *pstr = ((void*)0);

 fseek(file, 0, SEEK_END);
 size = (size_t)os_ftelli64(file);

 if (size > 0) {
  char bom[3];
  char *utf8str;
  off_t offset;

  bom[0] = 0;
  bom[1] = 0;
  bom[2] = 0;


  fseek(file, 0, SEEK_SET);
  size_t size_read = fread(bom, 1, 3, file);
  (void)size_read;

  offset = (astrcmp_n(bom, "\xEF\xBB\xBF", 3) == 0) ? 3 : 0;

  size -= offset;
  if (size == 0)
   return 0;

  utf8str = bmalloc(size + 1);
  fseek(file, offset, SEEK_SET);

  size = fread(utf8str, 1, size, file);
  if (size == 0) {
   bfree(utf8str);
   return 0;
  }

  utf8str[size] = 0;

  *pstr = utf8str;
 }

 return len;
}
