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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC7 (unsigned char) ; 

__attribute__((used)) static HRESULT FUNC8(IStream *input, IStream **ret_stream)
{
    const unsigned char *ptr, *end;
    unsigned char *ret, prev = 0;
    unsigned char buf[1024];
    LARGE_INTEGER pos;
    IStream *output;
    DWORD size;
    int n = -1;
    HRESULT hres;

    pos.QuadPart = 0;
    hres = FUNC4(input, pos, STREAM_SEEK_SET, NULL);
    if(FUNC1(hres))
        return hres;

    hres = FUNC0(NULL, TRUE, &output);
    if(FUNC1(hres))
        return hres;

    while(1) {
        hres = FUNC2(input, buf, sizeof(buf), &size);
        if(FUNC1(hres) || !size)
            break;

        ptr = ret = buf;
        end = buf + size;

        while(ptr < end) {
            unsigned char byte = *ptr++;

            switch(n) {
            case -1:
                if(byte == '=')
                    n = 0;
                else
                    *ret++ = byte;
                continue;
            case 0:
                prev = byte;
                n = 1;
                continue;
            case 1:
                if(prev != '\r' || byte != '\n') {
                    int h1 = FUNC7(prev), h2 = FUNC7(byte);
                    if(h1 != -1 && h2 != -1)
                        *ret++ = (h1 << 4) | h2;
                    else
                        *ret++ = '=';
                }
                n = -1;
                continue;
            }
        }

        if(ret > buf) {
            hres = FUNC5(output, buf, ret - buf, NULL);
            if(FUNC1(hres))
                break;
        }
    }

    if(FUNC6(hres))
        hres = FUNC4(output, pos, STREAM_SEEK_SET, NULL);
    if(FUNC1(hres)) {
        FUNC3(output);
        return hres;
    }

    *ret_stream = output;
    return S_OK;
}