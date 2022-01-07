
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int MAX_METADATA_STRING_LENGTH ;
 char r_buf_read8_at (int *,int) ;

__attribute__((used)) static int bin_pe_read_metadata_string(char* to, RBuffer *frombuf, int fromoff) {
 int covered = 0;
 while (covered < MAX_METADATA_STRING_LENGTH) {
  char covch = r_buf_read8_at (frombuf, covered);
  to[covered] = covch;
  if (covch == '\0') {
   covered += 1;
   break;
  }
  covered++;
 }
 while (covered % 4 != 0) { covered++; }
 return covered;
}
