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
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char const,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int MG_DNS_AAAA_RECORD ; 
 int MG_DNS_A_RECORD ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,char*,int) ; 

__attribute__((used)) static const char *FUNC6(void) {
  struct mg_connection nc;
  const char *got;
  int query_types[] = {MG_DNS_A_RECORD, MG_DNS_AAAA_RECORD};
  size_t i;
  FUNC3(&nc);

  /*
   * Testing TCP encoding since when the connection
   * is in UDP mode the data is not stored in the send buffer.
   */

  for (i = 0; i < FUNC0(query_types); i++) {
    FUNC5(&nc, "www.cesanta.com", query_types[i]);
    got = nc.send_mbuf.buf;
    FUNC1(nc.send_mbuf.len, 12 + 4 + 13 + 4 + 2);
    FUNC1(got[14], 3);
    FUNC2(&got[15], "www");
    FUNC1(got[18], 7);
    FUNC2(&got[19], "cesanta");
    FUNC1(got[26], 3);
    FUNC2(&got[27], "com");
    FUNC1(got[30], 0);
    FUNC1(got[31], 0);
    FUNC1(got[32], query_types[i]);
    FUNC1(got[33], 0);
    FUNC1(got[34], 1);

    FUNC4(&nc.send_mbuf);
  }
  return NULL;
}