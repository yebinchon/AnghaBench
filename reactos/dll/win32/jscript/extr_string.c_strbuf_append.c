
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; scalar_t__ buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int memcpy (scalar_t__,int const*,int) ;
 int strbuf_ensure_size (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static HRESULT strbuf_append(strbuf_t *buf, const WCHAR *str, DWORD len)
{
    if(!len)
        return S_OK;

    if(!strbuf_ensure_size(buf, buf->len+len))
        return E_OUTOFMEMORY;

    memcpy(buf->buf+buf->len, str, len*sizeof(WCHAR));
    buf->len += len;
    return S_OK;
}
