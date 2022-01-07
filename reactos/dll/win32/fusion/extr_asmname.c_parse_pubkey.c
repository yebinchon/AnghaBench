
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int* pubkey; int haspubkey; } ;
typedef int * LPCWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int HRESULT ;
typedef int BYTE ;


 int CHARS_PER_PUBKEY ;
 int FUSION_E_INVALID_NAME ;
 int FUSION_E_PRIVATE_ASM_DISALLOWED ;
 int S_OK ;
 int TRUE ;
 int hextobyte (int ) ;
 int is_hex (int ) ;
 scalar_t__ lstrcmpiW (int *,char const*) ;
 int lstrlenW (int *) ;

__attribute__((used)) static HRESULT parse_pubkey(IAssemblyNameImpl *name, LPCWSTR pubkey)
{
    int i;
    BYTE val;
    static const WCHAR nullstr[] = {'n','u','l','l',0};

    if(lstrcmpiW(pubkey, nullstr) == 0)
        return FUSION_E_PRIVATE_ASM_DISALLOWED;

    if (lstrlenW(pubkey) < CHARS_PER_PUBKEY)
        return FUSION_E_INVALID_NAME;

    for (i = 0; i < CHARS_PER_PUBKEY; i++)
        if (!is_hex(pubkey[i]))
            return FUSION_E_INVALID_NAME;

    name->haspubkey = TRUE;

    for (i = 0; i < CHARS_PER_PUBKEY; i += 2)
    {
        val = (hextobyte(pubkey[i]) << 4) + hextobyte(pubkey[i + 1]);
        name->pubkey[i / 2] = val;
    }

    return S_OK;
}
