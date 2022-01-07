
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; scalar_t__ len; int str; } ;
typedef TYPE_1__ strbuf ;
typedef int WCHAR ;


 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;

__attribute__((used)) static void strbuf_init(strbuf *buf)
{
    buf->str = HeapAlloc(GetProcessHeap(), 0, 128*sizeof(WCHAR));
    buf->alloc = 128;
    buf->len = 0;
}
