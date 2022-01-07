
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int strbuf_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int find_node_end (int *,int *) ;
 int strbuf_append (int *,char*,int) ;
 int stream_chr (int *,int *,char) ;

BOOL next_node(stream_t *stream, strbuf_t *buf)
{

    if(!stream_chr(stream, ((void*)0), '<'))
        return FALSE;


    if(!find_node_end(stream, buf))
        return FALSE;

    strbuf_append(buf, ">", 2);

    return TRUE;
}
