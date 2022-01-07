
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int str; } ;
typedef TYPE_1__ strbuf ;
typedef int Registrar ;
typedef int LPCOLESTR ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int TRACE (char*,int *,int ,scalar_t__) ;
 int WARN (char*) ;
 int debugstr_w (int ) ;
 int do_preprocess (int *,int ,TYPE_1__*) ;
 int do_process_root_key (int ,scalar_t__) ;
 int strbuf_init (TYPE_1__*) ;

__attribute__((used)) static HRESULT string_register(Registrar *This, LPCOLESTR data, BOOL do_register)
{
    strbuf buf;
    HRESULT hres;

    TRACE("(%p %s %x)\n", This, debugstr_w(data), do_register);

    strbuf_init(&buf);
    hres = do_preprocess(This, data, &buf);
    if(FAILED(hres)) {
        WARN("preprocessing failed!\n");
        HeapFree(GetProcessHeap(), 0, buf.str);
        return hres;
    }

    hres = do_process_root_key(buf.str, do_register);
    if(FAILED(hres) && do_register)
        do_process_root_key(buf.str, FALSE);

    HeapFree(GetProcessHeap(), 0, buf.str);
    return hres;
}
