
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int str; } ;
typedef TYPE_1__ strbuf ;
struct TYPE_8__ {int key_len; char const* item; int key; struct TYPE_8__* next; } ;
typedef TYPE_2__ rep_list ;
typedef char WCHAR ;
struct TYPE_9__ {TYPE_2__* rep; } ;
typedef TYPE_3__ Registrar ;
typedef char const* LPCOLESTR ;
typedef int HRESULT ;


 int DISP_E_EXCEPTION ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int _wcsnicmp (char const*,int ,int) ;
 int debugstr_w (int ) ;
 int debugstr_wn (char const*,int) ;
 int strbuf_write (char const*,TYPE_1__*,int) ;
 char* wcschr (char const*,char) ;

__attribute__((used)) static HRESULT do_preprocess(const Registrar *This, LPCOLESTR data, strbuf *buf)
{
    LPCOLESTR iter, iter2 = data;
    rep_list *rep_iter;
    static const WCHAR wstr[] = {'%',0};

    iter = wcschr(data, '%');
    while(iter) {
        strbuf_write(iter2, buf, iter-iter2);

        iter2 = ++iter;
        if(!*iter2)
            return DISP_E_EXCEPTION;
        iter = wcschr(iter2, '%');
        if(!iter)
            return DISP_E_EXCEPTION;

        if(iter == iter2) {
            strbuf_write(wstr, buf, 1);
        }else {
            for(rep_iter = This->rep; rep_iter; rep_iter = rep_iter->next) {
                if(rep_iter->key_len == iter-iter2
                        && !_wcsnicmp(iter2, rep_iter->key, rep_iter->key_len))
                    break;
            }
            if(!rep_iter) {
                WARN("Could not find replacement: %s\n", debugstr_wn(iter2, iter-iter2));
                return DISP_E_EXCEPTION;
            }

            strbuf_write(rep_iter->item, buf, -1);
        }

        iter2 = ++iter;
        iter = wcschr(iter, '%');
    }

    strbuf_write(iter2, buf, -1);
    TRACE("%s\n", debugstr_w(buf->str));

    return S_OK;
}
