
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;
typedef int RStrBuf ;


 int r_strbuf_appendf (int *,char*) ;

__attribute__((used)) static void pad(RStrBuf *sb, ut32 count) {
 ut32 i;
 for (i = 0; i < count; i++) {
  r_strbuf_appendf (sb, "    ");
 }
}
