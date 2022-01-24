#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  size ;
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  pStorage; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_1__ CHMInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STGM_READ ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

LPWSTR FUNC11(CHMInfo *chm, DWORD index)
{
    IStream *ivb_stream;
    DWORD size, read, i;
    DWORD *buf;
    LPCSTR ret = NULL;
    HRESULT hres;

    static const WCHAR wszIVB[] = {'#','I','V','B',0};

    hres = FUNC2(chm->pStorage, wszIVB, NULL, STGM_READ, 0, &ivb_stream);
    if(FUNC0(hres)) {
        FUNC6("Could not open #IVB stream: %08x\n", hres);
        return NULL;
    }

    hres = FUNC3(ivb_stream, &size, sizeof(size), &read);
    if(FUNC0(hres)) {
        FUNC6("Read failed: %08x\n", hres);
        FUNC4(ivb_stream);
        return NULL;
    }

    buf = FUNC8(size);
    hres = FUNC3(ivb_stream, buf, size, &read);
    FUNC4(ivb_stream);
    if(FUNC0(hres)) {
        FUNC6("Read failed: %08x\n", hres);
        FUNC9(buf);
        return NULL;
    }

    size /= 2*sizeof(DWORD);

    for(i=0; i<size; i++) {
        if(buf[2*i] == index) {
            ret = FUNC1(chm, buf[2*i+1]);
            break;
        }
    }

    FUNC9(buf);

    FUNC5("returning %s\n", FUNC7(ret));
    return FUNC10(ret);
}