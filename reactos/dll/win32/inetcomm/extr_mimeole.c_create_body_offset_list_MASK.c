#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct TYPE_9__ {size_t cbBodyEnd; size_t cbBoundaryStart; int cbHeaderStart; } ;
struct TYPE_10__ {int /*<<< orphan*/  entry; TYPE_2__ offsets; } ;
typedef  TYPE_3__ offset_entry_t ;
struct TYPE_8__ {size_t LowPart; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef  TYPE_4__ ULARGE_INTEGER ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
typedef  TYPE_5__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int PARSER_BUF_SIZE ; 
 int /*<<< orphan*/  STREAM_SEEK_CUR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct list*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static HRESULT FUNC12(IStream *stm, const char *boundary, struct list *body_offsets)
{
    HRESULT hr;
    DWORD read, boundary_start;
    int boundary_len = FUNC10(boundary);
    char *buf, *ptr, *overlap;
    DWORD start = 0, overlap_no;
    offset_entry_t *cur_body = NULL;
    BOOL is_first_line = TRUE;
    ULARGE_INTEGER cur;
    LARGE_INTEGER zero;

    FUNC7(body_offsets);

    overlap_no = boundary_len + 5;

    overlap = buf = FUNC2(FUNC1(), 0, overlap_no + PARSER_BUF_SIZE + 1);

    zero.QuadPart = 0;
    hr = FUNC5(stm, zero, STREAM_SEEK_CUR, &cur);
    start = cur.u.LowPart;

    do {
        hr = FUNC4(stm, overlap, PARSER_BUF_SIZE, &read);
        if(FUNC0(hr)) goto end;
        if(read == 0) break;
        overlap[read] = '\0';

        ptr = buf;
        while(1) {
            if(is_first_line) {
                is_first_line = FALSE;
            }else {
                ptr = FUNC11(ptr, "\r\n");
                if(!ptr)
                    break;
                ptr += 2;
            }

            boundary_start = start + ptr - buf;

            if(*ptr == '-' && *(ptr + 1) == '-' && !FUNC8(ptr + 2, boundary, boundary_len)) {
                ptr += boundary_len + 2;

                if(*ptr == '\r' && *(ptr + 1) == '\n')
                {
                    ptr += 2;
                    if(cur_body)
                    {
                        cur_body->offsets.cbBodyEnd = boundary_start - 2;
                        FUNC6(body_offsets, &cur_body->entry);
                    }
                    cur_body = FUNC2(FUNC1(), 0, sizeof(*cur_body));
                    cur_body->offsets.cbBoundaryStart = boundary_start;
                    cur_body->offsets.cbHeaderStart = start + ptr - buf;
                }
                else if(*ptr == '-' && *(ptr + 1) == '-')
                {
                    if(cur_body)
                    {
                        cur_body->offsets.cbBodyEnd = boundary_start - 2;
                        FUNC6(body_offsets, &cur_body->entry);
                        goto end;
                    }
                }
            }
        }

        if(overlap == buf) /* 1st iteration */
        {
            FUNC9(buf, buf + PARSER_BUF_SIZE - overlap_no, overlap_no);
            overlap = buf + overlap_no;
            start += read - overlap_no;
        }
        else
        {
            FUNC9(buf, buf + PARSER_BUF_SIZE, overlap_no);
            start += read;
        }
    } while(1);

end:
    FUNC3(FUNC1(), 0, buf);
    return hr;
}