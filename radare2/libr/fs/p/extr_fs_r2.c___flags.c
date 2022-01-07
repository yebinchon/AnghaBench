
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RFSRoot ;


 int free (char*) ;
 int * fscmd (int *,char*,float) ;
 char* r_str_newf (char*,char const*) ;
 char* strdup (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static RList *__flags(RFSRoot *root, const char *path) {
 const char *prefix = ((void*)0);
 if (!strncmp (path, "/flags/", 7)) {
  prefix = path + 7;
 }
 char *cmd = prefix
  ? r_str_newf ("fq@F:%s", prefix)
  : strdup ("fsq");
 RList *res = fscmd (root, cmd, prefix? 'f': 'd');
 free (cmd);
 return res;
}
