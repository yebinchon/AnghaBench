
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int ) ;
 int trx2usr (int *,int *) ;
 int unlink (char*) ;

extern int main(int argc, char *argv[])
{
 FILE* in;
 FILE* out;
 int ret;

 if (argc != 3)
 {
  fprintf(stderr, "Usage: trx2usr <trx input> <usr output>\n");
  exit(2);
 }
 in = fopen(argv[1], "rb");
 if (!in)
 {
  fprintf(stderr, "Cannot open \"%s\": %s\n", argv[1], strerror(errno));
  exit(1);
 }
 out = fopen(argv[2], "wb");
 if (!out)
 {
  fprintf(stderr, "Cannot create \"%s\": %s\n", argv[2], strerror(errno));
  exit(1);
 }
 ret = trx2usr(in, out);
 fclose(in);
 fclose(out);
 if (ret)
 {
  unlink(argv[2]);
 }
 return ret;
}
