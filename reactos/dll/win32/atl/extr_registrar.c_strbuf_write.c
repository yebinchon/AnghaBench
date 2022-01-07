
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int alloc; char* str; } ;
typedef TYPE_1__ strbuf ;
typedef int WCHAR ;
typedef int OLECHAR ;
typedef int LPCOLESTR ;


 int GetProcessHeap () ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int lstrlenW (int ) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static void strbuf_write(LPCOLESTR str, strbuf *buf, int len)
{
    if(len == -1)
        len = lstrlenW(str);
    if(buf->len+len+1 >= buf->alloc) {
        buf->alloc = (buf->len+len)<<1;
        buf->str = HeapReAlloc(GetProcessHeap(), 0, buf->str, buf->alloc*sizeof(WCHAR));
    }
    memcpy(buf->str+buf->len, str, len*sizeof(OLECHAR));
    buf->len += len;
    buf->str[buf->len] = '\0';
}
