#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, vdisp_t *jsthis, unsigned argc, jsval_t *argv, jsval_t *r,
        const WCHAR *tagname, const WCHAR *attrname)
{
    jsstr_t *str, *attr_value = NULL;
    HRESULT hres;

    hres = FUNC1(ctx, jsthis, &str);
    if(FUNC0(hres))
        return hres;

    if(argc) {
        hres = FUNC10(ctx, argv[0], &attr_value);
        if(FUNC0(hres)) {
            FUNC5(str);
            return hres;
        }
    }else {
        attr_value = FUNC6();
    }

    if(r) {
        unsigned attrname_len = FUNC8(attrname);
        unsigned tagname_len = FUNC8(tagname);
        jsstr_t *ret;
        WCHAR *ptr;

        ret = FUNC2(2*tagname_len + attrname_len + FUNC4(attr_value) + FUNC4(str) + 9, &ptr);
        if(ret) {
            *ptr++ = '<';
            FUNC9(ptr, tagname, tagname_len*sizeof(WCHAR));
            ptr += tagname_len;
            *ptr++ = ' ';
            FUNC9(ptr, attrname, attrname_len*sizeof(WCHAR));
            ptr += attrname_len;
            *ptr++ = '=';
            *ptr++ = '"';
            ptr += FUNC3(attr_value, ptr);
            *ptr++ = '"';
            *ptr++ = '>';
            ptr += FUNC3(str, ptr);

            *ptr++ = '<';
            *ptr++ = '/';
            FUNC9(ptr, tagname, tagname_len*sizeof(WCHAR));
            ptr += tagname_len;
            *ptr = '>';

            *r = FUNC7(ret);
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    FUNC5(attr_value);
    FUNC5(str);
    return hres;
}