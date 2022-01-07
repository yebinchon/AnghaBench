
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RBuffer ;


 int * calloc (int,int) ;
 int dwordsBeginAt ;
 int eprintf (char*) ;
 int free (int *) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_read_le32 (int *) ;
 int stringsBeginAt ;

__attribute__((used)) static void parseTable3(RBuffer *buf, int x) {

 const int dword_section = dwordsBeginAt;
 int dword_section_end = stringsBeginAt;
 int i, size = dword_section_end - dword_section;
 int min = -1;
 int max = -1;

 ut8 *b = calloc (size, 1);
 if (!b) {
  return;
 }
 r_buf_read_at (buf, x, b, size);
 for (i = 0; i < size; i += 8) {

  if (i + 4 >= size) {
   eprintf ("..skip..\n");
   continue;
  }
  int v = r_read_le32 (b + i);


  if (min == -1 || v < min) {
   min = v;
  }
  if (max == -1 || v > max) {
   max = v;
  }
 }
 free (b);
}
