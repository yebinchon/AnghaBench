
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; char* buf; } ;
typedef TYPE_1__ SStrBuf ;



char *r_strbuf_get(SStrBuf *sb) {
 return sb? (sb->ptr? sb->ptr: sb->buf) : ((void*)0);
}
