
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t ssize_t ;
typedef int FILE ;


 size_t EIO ;
 size_t ENOMEM ;
 int fprintf (int ,char*,size_t,int ) ;
 int free (int *) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int * malloc (size_t) ;
 int memset (int *,int ,size_t) ;
 int stderr ;
 int trx_path ;

__attribute__((used)) static ssize_t otrx_create_append_zeros(FILE *trx, size_t length) {
 uint8_t *buf;

 buf = malloc(length);
 if (!buf)
  return -ENOMEM;
 memset(buf, 0, length);

 if (fwrite(buf, 1, length, trx) != length) {
  fprintf(stderr, "Couldn't write %zu B to %s\n", length, trx_path);
  free(buf);
  return -EIO;
 }

 free(buf);

 return length;
}
