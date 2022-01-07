
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int EACCES ;
 int ENOMEM ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (int *,int,size_t,int *) ;
 int free (int *) ;
 int fseek (int *,size_t,int ) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int * malloc (size_t) ;
 int printf (char*,size_t,char*) ;
 int stderr ;
 char* trx_path ;

__attribute__((used)) static int otrx_extract_copy(FILE *trx, size_t offset, size_t length, char *out_path) {
 FILE *out;
 size_t bytes;
 uint8_t *buf;
 int err = 0;

 out = fopen(out_path, "w");
 if (!out) {
  fprintf(stderr, "Couldn't open %s\n", out_path);
  err = -EACCES;
  goto out;
 }

 buf = malloc(length);
 if (!buf) {
  fprintf(stderr, "Couldn't alloc %zu B buffer\n", length);
  err = -ENOMEM;
  goto err_close;
 }

 fseek(trx, offset, SEEK_SET);
 bytes = fread(buf, 1, length, trx);
 if (bytes != length) {
  fprintf(stderr, "Couldn't read %zu B of data from %s\n", length, trx_path);
  err = -ENOMEM;
  goto err_free_buf;
 };

 bytes = fwrite(buf, 1, length, out);
 if (bytes != length) {
  fprintf(stderr, "Couldn't write %zu B to %s\n", length, out_path);
  err = -ENOMEM;
  goto err_free_buf;
 }

 printf("Extracted 0x%zx bytes into %s\n", length, out_path);

err_free_buf:
 free(buf);
err_close:
 fclose(out);
out:
 return err;
}
