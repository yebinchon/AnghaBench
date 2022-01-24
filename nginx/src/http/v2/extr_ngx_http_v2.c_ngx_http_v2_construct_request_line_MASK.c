#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_14__ {char* data; scalar_t__ len; } ;
struct TYPE_11__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_13__ {TYPE_6__ request_line; TYPE_4__* connection; TYPE_3__ unparsed_uri; TYPE_2__ method_name; int /*<<< orphan*/  stream; int /*<<< orphan*/  pool; TYPE_1__ schema; } ;
typedef  TYPE_5__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ending ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_BAD_REQUEST ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_OK ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r)
{
    u_char  *p;

    static const u_char ending[] = " HTTP/2.0";

    if (r->method_name.len == 0
        || r->schema.len == 0
        || r->unparsed_uri.len == 0)
    {
        if (r->method_name.len == 0) {
            FUNC4(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent no :method header");

        } else if (r->schema.len == 0) {
            FUNC4(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent no :scheme header");

        } else {
            FUNC4(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent no :path header");
        }

        FUNC1(r, NGX_HTTP_BAD_REQUEST);
        return NGX_ERROR;
    }

    r->request_line.len = r->method_name.len + 1
                          + r->unparsed_uri.len
                          + sizeof(ending) - 1;

    p = FUNC6(r->pool, r->request_line.len + 1);
    if (p == NULL) {
        FUNC2(r->stream, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_ERROR;
    }

    r->request_line.data = p;

    p = FUNC0(p, r->method_name.data, r->method_name.len);

    *p++ = ' ';

    p = FUNC0(p, r->unparsed_uri.data, r->unparsed_uri.len);

    FUNC5(p, ending, sizeof(ending));

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http2 request line: \"%V\"", &r->request_line);

    return NGX_OK;
}