
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int UZLIB_OK ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (int *,int,scalar_t__,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;
 scalar_t__ fwrite (int *,scalar_t__,int,int *) ;
 int printf (char*,char const*,char const*) ;
 int unlink (char const*) ;
 int uz_free (int *) ;
 scalar_t__ uz_malloc (scalar_t__) ;
 int uzlib_compress (int **,scalar_t__*,int *,scalar_t__) ;

int main (int argc, char **argv) {
  const char *in = argv[1], *out = argv[2];
  if (argc!=3)
    return 1;
  printf ("Compressing in=%s out=%s\n", in, out);
  FILE *fin, *fout;
  int status = -1;
  uint32_t iLen, oLen;
  uint8_t *iBuf, *oBuf;

  if (!(fin = fopen(in, "rb")) || fseek(fin, 0, SEEK_END) ||
      (iLen = ftell(fin)) <= 0 || fseek(fin, 0, SEEK_SET))
    return 1;
  if ((fout = fopen(out, "wb")) == ((void*)0) ||
      (iBuf = (uint8_t *) uz_malloc(iLen)) == ((void*)0) ||
      fread(iBuf, 1, iLen, fin) != iLen)
    return 1;

  if (uzlib_compress (&oBuf, &oLen, iBuf, iLen) == UZLIB_OK &&
      oLen == fwrite(oBuf, oLen, 1, fout))
    status = UZLIB_OK;
  uz_free(iBuf);
  if (oBuf) uz_free(oBuf);

  fclose(fin);
  fclose(fout);

  if (status == UZLIB_OK)
    unlink(out);

  return (status == UZLIB_OK) ? 1: 0;
}
