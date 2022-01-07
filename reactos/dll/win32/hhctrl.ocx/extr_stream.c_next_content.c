
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int strbuf_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int stream_chr (int *,int *,char) ;

BOOL next_content(stream_t *stream, strbuf_t *buf)
{
    if(!stream_chr(stream, buf, '<'))
        return FALSE;

    return TRUE;
}
