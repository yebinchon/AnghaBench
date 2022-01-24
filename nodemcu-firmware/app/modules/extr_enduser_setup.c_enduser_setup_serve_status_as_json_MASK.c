#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct tcp_pcb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct ip_info {TYPE_1__ ip; } ;
struct TYPE_4__ {scalar_t__ lastStationStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  STATION_IF ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,char*,int) ; 
 char* ipaddr ; 
 int FUNC4 (char*,char const*,...) ; 
 TYPE_2__* state ; 
 int FUNC5 (char const*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ip_info*) ; 
 int FUNC8 () ; 

__attribute__((used)) static void FUNC9 (struct tcp_pcb *http_client)
{
  FUNC0("enduser_setup_serve_status_as_json");

  /* If the station is currently shut down because of wi-fi channel issue, use the cached status */
  uint8_t curr_status = state->lastStationStatus > 0 ? state->lastStationStatus : FUNC8 ();

  char json_payload[64];

  struct ip_info ip_info;

  if (curr_status == 5)
  {
    FUNC7(STATION_IF , &ip_info);
    /* If IP address not yet available, get now */
    if (FUNC5(ipaddr) == 0)
    {
      FUNC4(ipaddr, "%d.%d.%d.%d", FUNC1(&ip_info.ip.addr));
    }
    FUNC4(json_payload, "{\"deviceid\":\"%s\", \"status\":%d}", ipaddr, curr_status);
  }
  else
  {
    FUNC4(json_payload, "{\"deviceid\":\"%06X\", \"status\":%d}", FUNC6(), curr_status);
  }

  const char fmt[] =
    "HTTP/1.1 200 OK\r\n"
    "Cache-Control: no-cache\r\n"
    "Connection: close\r\n"
    "Access-Control-Allow-Origin: *\r\n"
    "Content-Type: application/json\r\n"
    "Content-Length: %d\r\n"
    "\r\n"
    "%s";

  int len = FUNC5(json_payload);
  char buf[FUNC5(fmt) + FUNC2(len) + len - 4];
  len = FUNC4 (buf, fmt, len, json_payload);
  FUNC3 (http_client, buf, len);
}