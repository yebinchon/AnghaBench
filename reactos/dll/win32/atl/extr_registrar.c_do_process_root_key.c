
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* str; int len; } ;
typedef TYPE_1__ strbuf ;
struct TYPE_8__ {int key; int name; } ;
typedef scalar_t__* LPCOLESTR ;
typedef int HRESULT ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 int DISP_E_EXCEPTION ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int WARN (char*,...) ;
 int debugstr_w (char*) ;
 int do_process_key (scalar_t__**,int ,TYPE_1__*,int ) ;
 int get_word (scalar_t__**,TYPE_1__*) ;
 int lstrcmpiW (char*,int ) ;
 TYPE_3__* root_keys ;
 int strbuf_init (TYPE_1__*) ;

__attribute__((used)) static HRESULT do_process_root_key(LPCOLESTR data, BOOL do_register)
{
    LPCOLESTR iter = data;
    strbuf buf;
    HRESULT hres;
    unsigned int i;

    strbuf_init(&buf);
    hres = get_word(&iter, &buf);
    if(FAILED(hres))
        return hres;

    while(*iter) {
        if(!buf.len) {
            WARN("ward.len == 0, failed\n");
            hres = DISP_E_EXCEPTION;
            break;
        }
        for(i=0; i<ARRAY_SIZE(root_keys); i++) {
            if(!lstrcmpiW(buf.str, root_keys[i].name))
                break;
        }
        if(i == ARRAY_SIZE(root_keys)) {
            WARN("Wrong root key name: %s\n", debugstr_w(buf.str));
            hres = DISP_E_EXCEPTION;
            break;
        }
        hres = get_word(&iter, &buf);
        if(FAILED(hres))
            break;
        if(buf.str[1] || buf.str[0] != '{') {
            WARN("Failed, expected '{', got %s\n", debugstr_w(buf.str));
            hres = DISP_E_EXCEPTION;
            break;
        }
        hres = do_process_key(&iter, root_keys[i].key, &buf, do_register);
        if(FAILED(hres)) {
            WARN("Processing key failed: %08x\n", hres);
            break;
        }
        hres = get_word(&iter, &buf);
        if(FAILED(hres))
            break;
    }
    HeapFree(GetProcessHeap(), 0, buf.str);
    return hres;
}
