#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint32_t ;
struct rtc_timeval {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct pbuf {int /*<<< orphan*/  payload; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_9__ {void* frac; void* sec; } ;
struct TYPE_10__ {int ver; int mode; TYPE_1__ xmit; } ;
typedef  TYPE_2__ ntp_frame_t ;
struct TYPE_12__ {size_t server_pos; int kodbits; int attempts; int /*<<< orphan*/  timer; int /*<<< orphan*/  pcb; TYPE_1__ cookie; } ;
struct TYPE_11__ {scalar_t__ addr; } ;

/* Variables and functions */
 int MAX_ATTEMPTS ; 
 int /*<<< orphan*/  NTP_MEM_ERR ; 
 int /*<<< orphan*/  NTP_PORT ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_TRANSPORT ; 
 int /*<<< orphan*/  SNTP_HANDLE_RESULT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 unsigned long const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_timeval*) ; 
 void* FUNC3 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  on_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pbuf* FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtc_timeval*) ; 
 int server_count ; 
 TYPE_3__* serverp ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 
 TYPE_4__* state ; 
 unsigned long const FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasknumber ; 
 unsigned long const the_offset ; 
 int FUNC17 (int /*<<< orphan*/ ,struct pbuf*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18 ()
{
  do {
    if (state->server_pos < 0) {
      FUNC8(&state->timer);
      FUNC9(&state->timer, on_timeout, NULL);
      FUNC0(on_timeout, SWTIMER_RESUME);
        //The function on_timeout calls this function(sntp_dosend) again to handle time sync timeout.
        //My guess: Since the WiFi connection is restored after waking from light sleep, it would be possible to contact the SNTP server, So why not let it
      state->server_pos = 0;
    } else {
      ++state->server_pos;
    }

    if (state->server_pos >= server_count) {
      state->server_pos = 0;
      ++state->attempts;
    }

    if (state->attempts >= MAX_ATTEMPTS || state->attempts * server_count >= 8) {
      FUNC15(tasknumber, SNTP_HANDLE_RESULT_ID);
      return;
    }
  } while (serverp[state->server_pos].addr == 0 || (state->kodbits & (1 << state->server_pos)));

  FUNC13("sntp: server %s (%d), attempt %d\n", FUNC4(serverp + state->server_pos), state->server_pos, state->attempts);

  struct pbuf *p = FUNC10 (PBUF_TRANSPORT, sizeof (ntp_frame_t), PBUF_RAM);
  if (!p) {
    FUNC16(tasknumber, NTP_MEM_ERR);
    return;
  }

  ntp_frame_t req;
  FUNC6 (&req, 0, sizeof (req));
  req.ver = 4;
  req.mode = 3; // client
#ifdef LUA_USE_MODULES_RTCTIME
  const uint32_t NTP_TO_UNIX_EPOCH = 2208988800ul;
  struct rtc_timeval tv;
  rtctime_gettimeofday (&tv);
  if (tv.tv_sec == 0) {
    get_zero_base_timeofday(&tv);
  }
  req.xmit.sec = htonl (tv.tv_sec - the_offset + NTP_TO_UNIX_EPOCH);
  req.xmit.frac = htonl (US_TO_FRAC(tv.tv_usec));
#else
  req.xmit.frac = FUNC3 (FUNC14 ());
#endif
  state->cookie = req.xmit;

  FUNC5 (p->payload, &req, sizeof (req));
  int ret = FUNC17 (state->pcb, p, serverp + state->server_pos, NTP_PORT);
  FUNC13("sntp: send: %d\n", ret);
  FUNC11 (p);

  // Ignore send errors -- let the timeout handle it

  FUNC7 (&state->timer, 1000, 0);
}