
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; scalar_t__ len; } ;
typedef TYPE_1__ strbuf ;
typedef char* LPCOLESTR ;
typedef int HRESULT ;


 int DISP_E_EXCEPTION ;
 int S_OK ;
 int WARN (char*) ;
 scalar_t__ iswspace (char) ;
 int strbuf_write (char*,TYPE_1__*,int) ;
 char* wcschr (char*,char) ;

__attribute__((used)) static HRESULT get_word(LPCOLESTR *str, strbuf *buf)
{
    LPCOLESTR iter, iter2 = *str;

    buf->len = 0;
    buf->str[0] = '\0';

    while(iswspace(*iter2))
        iter2++;
    iter = iter2;
    if(!*iter) {
        *str = iter;
        return S_OK;
    }

    if(*iter == '}' || *iter == '=') {
        strbuf_write(iter++, buf, 1);
    }else if(*iter == '\'') {
        iter2 = ++iter;
        iter = wcschr(iter, '\'');
        if(!iter) {
            WARN("Unexpected end of script\n");
            *str = iter;
            return DISP_E_EXCEPTION;
        }
        strbuf_write(iter2, buf, iter-iter2);
        iter++;
    }else {
        while(*iter && !iswspace(*iter))
            iter++;
        strbuf_write(iter2, buf, iter-iter2);
    }

    while(iswspace(*iter))
        iter++;
    *str = iter;
    return S_OK;
}
