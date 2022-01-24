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
struct mg_serve_http_opts {int /*<<< orphan*/  extra_headers; } ;
struct mg_connection {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  p; scalar_t__ len; } ;
struct http_message {TYPE_1__ uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  mg_print_dir_entry ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char const*,struct mg_serve_http_opts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mg_version_header ; 

__attribute__((used)) static void FUNC5(struct mg_connection *nc, const char *dir,
                                      struct http_message *hm,
                                      struct mg_serve_http_opts *opts) {
  static const char *sort_js_code =
      "<script>function srt(tb, sc, so, d) {"
      "var tr = Array.prototype.slice.call(tb.rows, 0),"
      "tr = tr.sort(function (a, b) { var c1 = a.cells[sc], c2 = b.cells[sc],"
      "n1 = c1.getAttribute('name'), n2 = c2.getAttribute('name'), "
      "t1 = a.cells[2].getAttribute('name'), "
      "t2 = b.cells[2].getAttribute('name'); "
      "return so * (t1 < 0 && t2 >= 0 ? -1 : t2 < 0 && t1 >= 0 ? 1 : "
      "n1 ? parseInt(n2) - parseInt(n1) : "
      "c1.textContent.trim().localeCompare(c2.textContent.trim())); });";
  static const char *sort_js_code2 =
      "for (var i = 0; i < tr.length; i++) tb.appendChild(tr[i]); "
      "if (!d) window.location.hash = ('sc=' + sc + '&so=' + so); "
      "};"
      "window.onload = function() {"
      "var tb = document.getElementById('tb');"
      "var m = /sc=([012]).so=(1|-1)/.exec(window.location.hash) || [0, 2, 1];"
      "var sc = m[1], so = m[2]; document.onclick = function(ev) { "
      "var c = ev.target.rel; if (c) {if (c == sc) so *= -1; srt(tb, c, so); "
      "sc = c; ev.preventDefault();}};"
      "srt(tb, sc, so, true);"
      "}"
      "</script>";

  FUNC4(nc, 200, opts->extra_headers);
  FUNC0(nc, "%s: %s\r\n%s: %s\r\n\r\n", "Transfer-Encoding", "chunked",
            "Content-Type", "text/html; charset=utf-8");

  FUNC1(
      nc,
      "<html><head><title>Index of %.*s</title>%s%s"
      "<style>th,td {text-align: left; padding-right: 1em; "
      "font-family: monospace; }</style></head>\n"
      "<body><h1>Index of %.*s</h1>\n<table cellpadding=0><thead>"
      "<tr><th><a href=# rel=0>Name</a></th><th>"
      "<a href=# rel=1>Modified</a</th>"
      "<th><a href=# rel=2>Size</a></th></tr>"
      "<tr><td colspan=3><hr></td></tr>\n"
      "</thead>\n"
      "<tbody id=tb>",
      (int) hm->uri.len, hm->uri.p, sort_js_code, sort_js_code2,
      (int) hm->uri.len, hm->uri.p);
  FUNC2(nc, dir, opts, mg_print_dir_entry);
  FUNC1(nc,
                       "</tbody><tr><td colspan=3><hr></td></tr>\n"
                       "</table>\n"
                       "<address>%s</address>\n"
                       "</body></html>",
                       mg_version_header);
  FUNC3(nc, "", 0);
  /* TODO(rojer): Remove when cesanta/dev/issues/197 is fixed. */
  nc->flags |= MG_F_SEND_AND_CLOSE;
}