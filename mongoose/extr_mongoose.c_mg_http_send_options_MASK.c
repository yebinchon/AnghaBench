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
struct mg_serve_http_opts {int /*<<< orphan*/  extra_headers; } ;
struct mg_connection {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc,
                                 struct mg_serve_http_opts *opts) {
  FUNC1(nc, 200, opts->extra_headers);
  FUNC0(nc, "%s",
            "Allow: GET, POST, HEAD, CONNECT, OPTIONS"
#if MG_ENABLE_HTTP_WEBDAV
            ", MKCOL, PUT, DELETE, PROPFIND, MOVE\r\nDAV: 1,2"
#endif
            "\r\n\r\n");
  nc->flags |= MG_F_SEND_AND_CLOSE;
}