
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RMagic ;
typedef int RBuffer ;


 int R2_SDB_MAGIC ;
 int r_buf_read_at (int *,int ,int *,int) ;
 char* r_magic_buffer (int *,int *,int) ;
 int r_magic_free (int *) ;
 int r_magic_load (int *,int ) ;
 int * r_magic_new (int ) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *get_filetype(RBuffer *b) {
 ut8 buf[4096] = { 0 };
 char *res = ((void*)0);
 RMagic *ck = r_magic_new (0);
 if (!ck) {
  return ((void*)0);
 }
 const char *tmp = ((void*)0);

 r_magic_load (ck, R2_SDB_MAGIC);
 r_buf_read_at (b, 0, buf, sizeof (buf));
 tmp = r_magic_buffer (ck, buf, sizeof (buf));
 if (tmp) {
  res = strdup (tmp);
 }
 r_magic_free (ck);
 return res;
}
