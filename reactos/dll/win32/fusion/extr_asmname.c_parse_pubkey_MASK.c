#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {int* pubkey; int /*<<< orphan*/  haspubkey; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  TYPE_1__ IAssemblyNameImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BYTE ;

/* Variables and functions */
 int CHARS_PER_PUBKEY ; 
 int /*<<< orphan*/  FUSION_E_INVALID_NAME ; 
 int /*<<< orphan*/  FUSION_E_PRIVATE_ASM_DISALLOWED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(IAssemblyNameImpl *name, LPCWSTR pubkey)
{
    int i;
    BYTE val;
    static const WCHAR nullstr[] = {'n','u','l','l',0};

    if(FUNC2(pubkey, nullstr) == 0)
        return FUSION_E_PRIVATE_ASM_DISALLOWED;

    if (FUNC3(pubkey) < CHARS_PER_PUBKEY)
        return FUSION_E_INVALID_NAME;

    for (i = 0; i < CHARS_PER_PUBKEY; i++)
        if (!FUNC1(pubkey[i]))
            return FUSION_E_INVALID_NAME;

    name->haspubkey = TRUE;

    for (i = 0; i < CHARS_PER_PUBKEY; i += 2)
    {
        val = (FUNC0(pubkey[i]) << 4) + FUNC0(pubkey[i + 1]);
        name->pubkey[i / 2] = val;
    }

    return S_OK;
}