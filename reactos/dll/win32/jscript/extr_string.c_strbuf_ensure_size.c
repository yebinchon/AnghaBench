
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; int * buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int WCHAR ;
typedef unsigned int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int * heap_alloc (unsigned int) ;
 int * heap_realloc (int *,unsigned int) ;

__attribute__((used)) static BOOL strbuf_ensure_size(strbuf_t *buf, unsigned len)
{
    WCHAR *new_buf;
    DWORD new_size;

    if(len <= buf->size)
        return TRUE;

    new_size = buf->size ? buf->size<<1 : 16;
    if(new_size < len)
        new_size = len;
    if(buf->buf)
        new_buf = heap_realloc(buf->buf, new_size*sizeof(WCHAR));
    else
        new_buf = heap_alloc(new_size*sizeof(WCHAR));
    if(!new_buf)
        return FALSE;

    buf->buf = new_buf;
    buf->size = new_size;
    return TRUE;
}
