
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buf; } ;
typedef TYPE_1__ StrBuf ;


 int free (TYPE_1__*) ;

__attribute__((used)) static StrBuf *strbuf_free(StrBuf *sb) {
 free (sb->buf);
 free (sb);
 return ((void*)0);
}
