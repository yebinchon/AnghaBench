#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/  sink; int /*<<< orphan*/  stream; scalar_t__ location; } ;
struct TYPE_12__ {int /*<<< orphan*/  pwszVal; } ;
struct TYPE_13__ {TYPE_1__ u; void* vt; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  TYPE_3__ MimeHtmlProtocol ;
typedef  int /*<<< orphan*/  IMimeMessage ;
typedef  int /*<<< orphan*/  IMimeBody ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HBODY ;
typedef  TYPE_4__ FINDBODY ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BINDSTATUS_MIMETYPEAVAILABLE ; 
 int BSCF_AVAILABLEDATASIZEUNKNOWN ; 
 int BSCF_DATAFULLYAVAILABLE ; 
 int BSCF_FIRSTDATANOTIFICATION ; 
 int BSCF_INTERMEDIATEDATANOTIFICATION ; 
 int BSCF_LASTDATANOTIFICATION ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FALSE ; 
 int /*<<< orphan*/  IET_DECODED ; 
 int /*<<< orphan*/  IID_IMimeBody ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ MIME_E_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 void* VT_LPWSTR ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC15(MimeHtmlProtocol *protocol, IMimeMessage *mime_message)
{
    FINDBODY find = {NULL};
    IMimeBody *mime_body;
    PROPVARIANT value;
    HBODY body;
    HRESULT hres;

    hres = FUNC6(mime_message, &find, &body);
    if(FUNC0(hres))
        return FUNC14(protocol, hres);

    if(protocol->location) {
        BOOL found = FALSE;
        do {
            hres = FUNC7(mime_message, &find, &body);
            if(FUNC0(hres)) {
                FUNC11("location %s not found\n", FUNC12(protocol->location));
                return FUNC14(protocol, hres);
            }

            value.vt = VT_LPWSTR;
            hres = FUNC8(mime_message, body, "content-location", 0, &value);
            if(hres == MIME_E_NOT_FOUND)
                continue;
            if(FUNC0(hres))
                return FUNC14(protocol, hres);

            found = !FUNC13(protocol->location, value.u.pwszVal);
            FUNC9(&value);
        }while(!found);
    }else {
        hres = FUNC7(mime_message, &find, &body);
        if(FUNC0(hres)) {
            FUNC11("location %s not found\n", FUNC12(protocol->location));
            return FUNC14(protocol, hres);
        }
    }

    hres = FUNC5(mime_message, body, &IID_IMimeBody, (void**)&mime_body);
    if(FUNC0(hres))
        return FUNC14(protocol, hres);

    value.vt = VT_LPWSTR;
    hres = FUNC4(mime_body, "content-type", 0, &value);
    if(FUNC10(hres)) {
        hres = FUNC2(protocol->sink, BINDSTATUS_MIMETYPEAVAILABLE, value.u.pwszVal);
        FUNC9(&value);
    }

    /* FIXME: Create and report cache file. */

    hres = FUNC3(mime_body, IET_DECODED, &protocol->stream);
    if(FUNC0(hres))
        return FUNC14(protocol, hres);

    FUNC1(protocol->sink, BSCF_FIRSTDATANOTIFICATION
                                     | BSCF_INTERMEDIATEDATANOTIFICATION
                                     | BSCF_LASTDATANOTIFICATION
                                     | BSCF_DATAFULLYAVAILABLE
                                     | BSCF_AVAILABLEDATASIZEUNKNOWN, 0, 0);

    return FUNC14(protocol, S_OK);
}