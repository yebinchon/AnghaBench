
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int len; char* p; } ;
struct mg_connection {int * user_data; } ;


 int fs_slfs_set_new_file_size (char*,intptr_t) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static struct mg_str upload_fname(struct mg_connection *nc,
                                  struct mg_str fname) {
  struct mg_str lfn;
  char *fn = malloc(fname.len + 4);
  memcpy(fn, "SL:", 3);
  memcpy(fn + 3, fname.p, fname.len);
  fn[3 + fname.len] = '\0';
  if (nc->user_data != ((void*)0)) {
    intptr_t cl = (intptr_t) nc->user_data;
    if (cl >= 0) {
      fs_slfs_set_new_file_size(fn + 3, cl);
    }
  }
  lfn.len = fname.len + 4;
  lfn.p = fn;
  return lfn;
}
