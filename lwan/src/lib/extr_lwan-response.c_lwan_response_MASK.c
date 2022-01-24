#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* callback ) (struct lwan_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; } ;
struct lwan_response {int /*<<< orphan*/  buffer; TYPE_1__ stream; int /*<<< orphan*/  mime_type; } ;
struct lwan_request {int flags; struct lwan_response response; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
typedef  int /*<<< orphan*/  headers ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;

/* Variables and functions */
 int DEFAULT_HEADERS_SIZE ; 
 int HTTP_CLASS__CLIENT_ERROR ; 
 int HTTP_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int (*) (struct lwan_request*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (struct iovec*) ; 
 int RESPONSE_CHUNKED_ENCODING ; 
 int RESPONSE_SENT_HEADERS ; 
 int RESPONSE_STREAM ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lwan_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lwan_request*,int) ; 
 size_t FUNC6 (struct lwan_request*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lwan_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct lwan_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct lwan_request*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct lwan_request*,struct iovec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,size_t const) ; 
 int FUNC16 (struct lwan_request*,int /*<<< orphan*/ ) ; 

void FUNC17(struct lwan_request *request, enum lwan_http_status status)
{
    const struct lwan_response *response = &request->response;
    char headers[DEFAULT_HEADERS_SIZE];

    if (FUNC2(request->flags & RESPONSE_CHUNKED_ENCODING)) {
        /* Send last, 0-sized chunk */
        FUNC13(response->buffer);
        FUNC8(request);
        FUNC4(request, status);
        return;
    }

    if (FUNC2(request->flags & RESPONSE_SENT_HEADERS)) {
        FUNC10("Headers already sent, ignoring call");
        return;
    }

    if (FUNC2(!response->mime_type)) {
        /* Requests without a MIME Type are errors from handlers that should
           just be handled by lwan_default_response().  */
        FUNC5(request, status);
        return;
    }

    FUNC4(request, status);

    if (request->flags & RESPONSE_STREAM) {
        if (FUNC0(response->stream.callback)) {
            status = response->stream.callback(request, response->stream.data);
        } else {
            status = HTTP_INTERNAL_ERROR;
        }

        if (status >= HTTP_CLASS__CLIENT_ERROR) {
            request->flags &= ~RESPONSE_STREAM;
            FUNC5(request, status);
        }

        return;
    }

    size_t header_len =
        FUNC6(request, status, headers, sizeof(headers));
    if (FUNC2(!header_len)) {
        FUNC5(request, HTTP_INTERNAL_ERROR);
        return;
    }

    if (!FUNC3(FUNC7(request), status)) {
        FUNC9(request, headers, header_len, 0);
        return;
    }

    char *resp_buf = FUNC11(response->buffer);
    const size_t resp_len = FUNC12(response->buffer);
    if (sizeof(headers) - header_len > resp_len) {
        /* writev() has to allocate, copy, and validate the response vector,
         * so use send() for responses small enough to fit the headers
         * buffer.  On Linux, this is ~10% faster.  */
        FUNC15(headers + header_len, resp_buf, resp_len);
        FUNC9(request, headers, header_len + resp_len, 0);
    } else {
        struct iovec response_vec[] = {
            {.iov_base = headers, .iov_len = header_len},
            {.iov_base = resp_buf, .iov_len = resp_len},
        };

        FUNC14(request, response_vec, FUNC1(response_vec));
    }
}