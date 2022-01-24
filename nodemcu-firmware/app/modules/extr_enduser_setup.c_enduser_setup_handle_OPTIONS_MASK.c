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
struct tcp_pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4 (struct tcp_pcb *http_client, char *data, unsigned short data_len)
{
  FUNC0("enduser_setup_handle_OPTIONS");

  const char json[] =
    "HTTP/1.1 200 OK\r\n"
    "Cache-Control: no-cache\r\n"
    "Connection: close\r\n"
    "Content-Type: application/json\r\n"
    "Content-Length: 0\r\n"
    "Access-Control-Allow-Origin: *\r\n"
    "Access-Control-Allow-Methods: GET\r\n"
    "Access-Control-Allow-Age: 300\r\n"
    "\r\n";

  const char others[] =
    "HTTP/1.1 200 OK\r\n"
    "Cache-Control: no-cache\r\n"
    "Connection: close\r\n"
    "Content-Length: 0\r\n"
    "\r\n";

  int type = 0;

  if (FUNC3(data, "GET ", 4) == 0)
  {
    if (FUNC3(data + 4, "/aplist", 7) == 0 || FUNC3(data + 4, "/setwifi?", 9) == 0 || FUNC3(data + 4, "/status.json", 12) == 0)
    {
      FUNC1 (http_client, json, FUNC2(json));
      return;
   }
  }
  FUNC1 (http_client, others, FUNC2(others));
  return;
}