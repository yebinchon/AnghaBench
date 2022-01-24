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
struct mg_str {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct mg_connection {int dummy; } ;
typedef  int /*<<< orphan*/  bhead ;
typedef  int /*<<< orphan*/  bbody ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,int,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int,char*) ; 

void FUNC4(struct mg_connection *nc, int status_code,
                           const struct mg_str location,
                           const struct mg_str extra_headers) {
  char bbody[100], *pbody = bbody;
  int bl = FUNC1(&pbody, sizeof(bbody),
                       "<p>Moved <a href='%.*s'>here</a>.\r\n",
                       (int) location.len, location.p);
  char bhead[150], *phead = bhead;
  FUNC1(&phead, sizeof(bhead),
              "Location: %.*s\r\n"
              "Content-Type: text/html\r\n"
              "Content-Length: %d\r\n"
              "Cache-Control: no-cache\r\n"
              "%.*s%s",
              (int) location.len, location.p, bl, (int) extra_headers.len,
              extra_headers.p, (extra_headers.len > 0 ? "\r\n" : ""));
  FUNC3(nc, status_code, phead);
  if (phead != bhead) FUNC0(phead);
  FUNC2(nc, pbody, bl);
  if (pbody != bbody) FUNC0(pbody);
}