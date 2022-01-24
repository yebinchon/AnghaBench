#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* prop; int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ header_t ;
struct TYPE_14__ {int /*<<< orphan*/  headers; } ;
struct TYPE_12__ {int id; } ;
typedef  TYPE_3__ MimeBody ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  PID_HDR_CNTTYPE 129 
#define  PID_HDR_CNTXFER 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,char**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char**) ; 

__attribute__((used)) static HRESULT FUNC9(MimeBody *body, IStream *stm)
{
    char *header_buf, *cur_header_ptr;
    HRESULT hr;
    header_t *header;

    hr = FUNC3(stm, &header_buf);
    if(FUNC0(hr)) return hr;

    cur_header_ptr = header_buf;
    while((header = FUNC7(body, &cur_header_ptr)))
    {
        FUNC8(header, &cur_header_ptr);
        FUNC6(&body->headers, &header->entry);

        switch(header->prop->id) {
        case PID_HDR_CNTTYPE:
            FUNC5(body, header);
            break;
        case PID_HDR_CNTXFER:
            FUNC4(body, header);
            break;
        }
    }

    FUNC2(FUNC1(), 0, header_buf);
    return hr;
}