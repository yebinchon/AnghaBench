
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t ssize_t ;
typedef int buf ;
typedef int FILE ;


 size_t EACCES ;
 size_t EIO ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (int *,int,int,int *) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int seama_path ;
 int stderr ;

__attribute__((used)) static ssize_t oseama_entity_append_file(FILE *seama, const char *in_path) {
 FILE *in;
 size_t bytes;
 ssize_t length = 0;
 uint8_t buf[128];

 in = fopen(in_path, "r");
 if (!in) {
  fprintf(stderr, "Couldn't open %s\n", in_path);
  return -EACCES;
 }

 while ((bytes = fread(buf, 1, sizeof(buf), in)) > 0) {
  if (fwrite(buf, 1, bytes, seama) != bytes) {
   fprintf(stderr, "Couldn't write %zu B to %s\n", bytes, seama_path);
   length = -EIO;
   break;
  }
  length += bytes;
 }

 fclose(in);

 return length;
}
