
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char ut8 ;
struct TYPE_2__ {char* root; int out; scalar_t__ encode; } ;
typedef TYPE_1__ ForeachListUser ;


 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* sdb_decode (char const*,int *) ;
 int strbuf_append (int ,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int foreach_list_cb(void *user, const char *k, const char *v) {
 ForeachListUser *rlu = user;
 char *line, *root;
 int rlen, klen, vlen;
 ut8 *v2 = ((void*)0);
 if (!rlu) {
  return 0;
 }
 root = rlu->root;
 klen = strlen (k);
 if (rlu->encode) {
  v2 = sdb_decode (v, ((void*)0));
  if (v2) {
   v = (const char *)v2;
  }
 }
 vlen = strlen (v);
 if (root) {
  rlen = strlen (root);
  line = malloc (klen + vlen + rlen + 3);
  if (!line) {
   free (v2);
   return 0;
  }
  memcpy (line, root, rlen);
  line[rlen]='/';
  memcpy (line + rlen + 1, k, klen);
  line[rlen + klen + 1] = '=';
  memcpy (line + rlen + klen + 2, v, vlen + 1);
 } else {
  line = malloc (klen + vlen + 2);
  if (!line) {
   free (v2);
   return 0;
  }
  memcpy (line, k, klen);
  line[klen] = '=';
  memcpy (line + klen + 1, v, vlen + 1);
 }
 strbuf_append (rlu->out, line, 1);
 free (v2);
 free (line);
 return 1;
}
