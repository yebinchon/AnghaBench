
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; scalar_t__ buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int jsstr_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int jsstr_flush (int *,scalar_t__) ;
 scalar_t__ jsstr_length (int *) ;
 int strbuf_ensure_size (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static HRESULT strbuf_append_jsstr(strbuf_t *buf, jsstr_t *str)
{
    if(!strbuf_ensure_size(buf, buf->len+jsstr_length(str)))
        return E_OUTOFMEMORY;

    jsstr_flush(str, buf->buf+buf->len);
    buf->len += jsstr_length(str);
    return S_OK;
}
