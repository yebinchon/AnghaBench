
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_4__ {int len; char* buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 char* memchr (char*,char,int) ;
 int stream_chr (int *,TYPE_1__*,char) ;

__attribute__((used)) static BOOL find_node_end(stream_t *stream, strbuf_t *buf)
{
    int tag_count = 0, b = buf->len;
    char *p;

    while(1)
    {
        if(!stream_chr(stream, buf, '>'))
            return FALSE;
        if(buf->len == 0)
            break;
        p = &buf->buf[b];
        while((p = memchr(p+1, '"', buf->len-(p+1-buf->buf))) != ((void*)0))
            tag_count++;
        b = buf->len;
        if(tag_count % 2 != 0)
        {
            if(!stream_chr(stream, buf, '"'))
                return FALSE;
            tag_count++;
        }
        else
            break;
    }
    return TRUE;
}
