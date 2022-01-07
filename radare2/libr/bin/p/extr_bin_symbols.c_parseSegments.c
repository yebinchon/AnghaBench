
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RListFree ;
typedef int RList ;
typedef int RBuffer ;
typedef int RBinSection ;


 int * calloc (int,int) ;
 int free (char*) ;
 int * newSection (char*,int,int,int) ;
 scalar_t__ r_bin_section_free ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_list_append (int *,int *) ;
 int * r_list_newf (int ) ;
 int r_read_le32 (int *) ;
 char* r_str_ndup (char const*,int ) ;
 int r_str_nlen (char const*,int) ;

__attribute__((used)) static RList *parseSegments(RBuffer *buf, int off, int count) {
 ut8 *b = calloc (count, 32);
 (void)r_buf_read_at (buf, off, b, count * 32);
 int x = off;
 int X = 0;
 int i;
 RList *segments = r_list_newf ((RListFree)r_bin_section_free);
 if (!segments) {
  return ((void*)0);
 }

 for (i = 0; i < count; i++) {
  int A = r_read_le32 (b + X + 16);
  int B = r_read_le32 (b + X + 16 + 8);


  const char *cname = (const char *)(b + X);
  char *name = r_str_ndup (cname, r_str_nlen (cname, 16));
  RBinSection *section = newSection (name, A, A + B, 1);
  free (name);
  r_list_append (segments, section);
  x += 32;
  X += 32;
 }
 return segments;
}
