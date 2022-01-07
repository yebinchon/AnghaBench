
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
typedef int FILE ;


 int fclose (int *) ;
 int fileno (int *) ;
 int fread (char*,int,size_t,int *) ;
 int fstat (int ,struct stat*) ;
 scalar_t__ malloc (size_t) ;
 int * mg_fopen (char const*,char*) ;

__attribute__((used)) static char *read_file(const char *path, size_t *size) {
  FILE *fp;
  struct stat st;
  char *data = ((void*)0);
  if ((fp = mg_fopen(path, "rb")) != ((void*)0) && !fstat(fileno(fp), &st)) {
    *size = st.st_size;
    data = (char *) malloc(*size);
    fread(data, 1, *size, fp);
    fclose(fp);
  }
  return data;
}
