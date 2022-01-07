
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;
typedef int RBuffer ;


 int * ar_open_file (char*,char*) ;
 int free (char*) ;
 int * r_io_desc_new (int *,int *,char*,int,int,int *) ;
 int r_io_plugin_ar ;
 char* strdup (char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static RIODesc *r_io_ar_open(RIO *io, const char *file, int rw, int mode) {
 RIODesc *res = ((void*)0);
 char *url = strdup (file);
 char *arname = strstr (url, "://") + 3;
 char *filename = strstr (arname, "//");
 if (filename) {
  *filename = 0;
  filename += 2;
 }

 RBuffer *b = ar_open_file (arname, filename);
 if (b) {
  res = r_io_desc_new (io, &r_io_plugin_ar, filename, rw, mode, b);
 }
 free (url);
 return res;
}
