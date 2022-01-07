
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int len; char* p; } ;
struct mg_connection {int dummy; } ;


 char* malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static struct mg_str upload_fname(struct mg_connection *nc,
                                  struct mg_str fname) {
  struct mg_str lfn;
  lfn.len = fname.len + 3;
  lfn.p = malloc(lfn.len);
  memcpy((char *) lfn.p, "SL:", 3);
  memcpy((char *) lfn.p + 3, fname.p, fname.len);
  return lfn;
}
