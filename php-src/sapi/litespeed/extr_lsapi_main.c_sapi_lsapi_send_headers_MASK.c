#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_llist_position ;
struct TYPE_9__ {int /*<<< orphan*/  headers; } ;
typedef  TYPE_1__ sapi_headers_struct ;
struct TYPE_10__ {scalar_t__ header_len; char* header; } ;
typedef  TYPE_2__ sapi_header_struct ;
struct TYPE_11__ {scalar_t__ send_default_content_type; int /*<<< orphan*/  http_response_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SAPI_HEADER_SENT_SUCCESSFULLY ; 
 int SAPI_LSAPI_MAX_HEADER_LENGTH ; 
 TYPE_7__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ lsapi_mode ; 
 scalar_t__ mod_lsapi_mode ; 
 char* FUNC5 () ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char*,int,char*,char*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sapi_headers_struct *sapi_headers)
{
    sapi_header_struct  *h;
    zend_llist_position pos;

    if ( mod_lsapi_mode ) {
        /* mod_lsapi mode */
        return FUNC6(sapi_headers);
    }

    /* Legacy mode */
    if ( lsapi_mode ) {
        FUNC2( FUNC3(sapi_headers).http_response_code );

        h = FUNC8(&sapi_headers->headers, &pos);
        while (h) {
            if ( h->header_len > 0 ) {
                FUNC0(h->header, h->header_len);
            }
            h = FUNC9(&sapi_headers->headers, &pos);
        }
        if (FUNC3(sapi_headers).send_default_content_type) {
            char    *hd;
            int     len;
            char    headerBuf[SAPI_LSAPI_MAX_HEADER_LENGTH];

            hd = FUNC5();
            len = FUNC7( headerBuf, SAPI_LSAPI_MAX_HEADER_LENGTH - 1,
                            "Content-type: %s", hd );
            FUNC4(hd);

            FUNC0( headerBuf, len );
        }
    }
    FUNC1();
    return SAPI_HEADER_SENT_SUCCESSFULLY;


}