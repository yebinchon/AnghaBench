
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SStrBuf ;


 int memset (int *,int ,int) ;

void r_strbuf_init(SStrBuf *sb) {
 memset (sb, 0, sizeof (SStrBuf));
}
