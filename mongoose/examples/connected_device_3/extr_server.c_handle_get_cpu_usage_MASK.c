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
struct mg_connection {int dummy; } ;

/* Variables and functions */
 double RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc) {
  // Generate random value, as an example of changing CPU usage
  // Getting real CPU usage depends on the OS.
  int cpu_usage = (double) FUNC3() / RAND_MAX * 100.0;

  // Use chunked encoding in order to avoid calculating Content-Length
  FUNC0(nc, "%s", "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");

  // Output JSON object which holds CPU usage data
  FUNC1(nc, "{ \"result\": %d }", cpu_usage);

  // Send empty chunk, the end of response
  FUNC2(nc, "", 0);
}