
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdb_types; } ;
typedef TYPE_1__ RAnal ;


 int VT_STRUCT ;
 int free (char*) ;
 char* sdb_anext (char*,char**) ;
 char* sdb_fmt (char*,char const*,...) ;
 char* sdb_get (int ,char*,int ) ;
 int sdb_num_get (int ,char*,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int tcc_sym_push (char*,int,int) ;

__attribute__((used)) static int __typeLoad(void *p, const char *k, const char *v) {
 if (!p) {
  return -1;
 }
 int btype = 0;
 RAnal *anal = (RAnal*)p;


 if (!strncmp (v, "struct", 6) && strncmp (k, "struct.", 7)) {

  btype = VT_STRUCT;
  const char *typename = k;
  int typesize = 0;

  char* query = sdb_fmt ("struct.%s", k);
  char *members = sdb_get (anal->sdb_types, query, 0);
  char *next, *ptr = members;
  if (members) {
   do {
    char *name = sdb_anext (ptr, &next);
    if (!name) {
     break;
    }
    query = sdb_fmt ("struct.%s.%s", k, name);
    char *subtype = sdb_get (anal->sdb_types, query, 0);
    if (!subtype) {
     break;
    }
    char *tmp = strchr (subtype, ',');
    if (tmp) {
     *tmp++ = 0;
     tmp = strchr (tmp, ',');
     if (tmp) {
      *tmp++ = 0;
     }
     char *subname = tmp;

     query = sdb_fmt ("struct.%s.%s.meta", subtype, subname);
     btype = sdb_num_get (anal->sdb_types, query, 0);
     tcc_sym_push (subtype, 0, btype);
    }
    free (subtype);
    ptr = next;
   } while (next);
   free (members);
  }
  tcc_sym_push ((char *)typename, typesize, btype);
 }
 return 0;
}
