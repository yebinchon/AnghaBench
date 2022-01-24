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
 unsigned char const FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int* base64_decode_table ; 

__attribute__((used)) static HRESULT FUNC8(IStream *input, IStream **ret_stream)
{
    const unsigned char *ptr, *end;
    unsigned char buf[1024];
    LARGE_INTEGER pos;
    unsigned char *ret;
    unsigned char in[4];
    IStream *output;
    DWORD size;
    int n = 0;
    HRESULT hres;

    pos.QuadPart = 0;
    hres = FUNC5(input, pos, STREAM_SEEK_SET, NULL);
    if(FUNC2(hres))
        return hres;

    hres = FUNC1(NULL, TRUE, &output);
    if(FUNC2(hres))
        return hres;

    while(1) {
        hres = FUNC3(input, buf, sizeof(buf), &size);
        if(FUNC2(hres) || !size)
            break;

        ptr = ret = buf;
        end = buf + size;

        while(1) {
            /* skip invalid chars */
            while(ptr < end && (*ptr >= FUNC0(base64_decode_table)
                                || base64_decode_table[*ptr] == -1))
                ptr++;
            if(ptr == end)
                break;

            in[n++] = base64_decode_table[*ptr++];
            switch(n) {
            case 2:
                *ret++ = in[0] << 2 | in[1] >> 4;
                continue;
            case 3:
                *ret++ = in[1] << 4 | in[2] >> 2;
                continue;
            case 4:
                *ret++ = ((in[2] << 6) & 0xc0) | in[3];
                n = 0;
            }
        }

        if(ret > buf) {
            hres = FUNC6(output, buf, ret - buf, NULL);
            if(FUNC2(hres))
                break;
        }
    }

    if(FUNC7(hres))
        hres = FUNC5(output, pos, STREAM_SEEK_SET, NULL);
    if(FUNC2(hres)) {
        FUNC4(output);
        return hres;
    }

    *ret_stream = output;
    return S_OK;
}