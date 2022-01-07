
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RStrBuf ;


 int r_strbuf_appendf (int *,char*,...) ;

__attribute__((used)) static void decode_array(RStrBuf *sb, const ut8* start, const ut8* end) {
 while (start < end) {
  r_strbuf_appendf (sb, "%02x ", *start);
  start++;
 }
 r_strbuf_appendf (sb, "\n");
}
