
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SStrBuf ;


 int free (int *) ;
 int r_strbuf_fini (int *) ;

void r_strbuf_free(SStrBuf *sb) {
 r_strbuf_fini (sb);
 free (sb);
}
