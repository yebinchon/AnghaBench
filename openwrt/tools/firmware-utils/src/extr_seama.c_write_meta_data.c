
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fwrite (char*,int,int,int *) ;
 int strlen (char*) ;
 int verbose (char*,char*) ;

__attribute__((used)) static size_t write_meta_data(FILE * fh, char * meta[], size_t size)
{
 size_t i,j;
 size_t ret = 0;

 for (i=0; i<size; i++)
 {
  verbose("SEAMA META data : %s\n", meta[i]);
  j = fwrite(meta[i], sizeof(char), strlen(meta[i])+1, fh);
  if (j != strlen(meta[i])+1) return 0;
  ret += j;
 }

 j = ((ret+3)/4)*4;
 for ( ; ret < j; ret++)
  fwrite("", sizeof(char), 1, fh);

 return ret;
}
