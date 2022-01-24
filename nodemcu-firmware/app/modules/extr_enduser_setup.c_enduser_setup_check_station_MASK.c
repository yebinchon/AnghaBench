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
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct ip_info {TYPE_1__ ip; } ;
struct TYPE_4__ {int softAPchannel; int lastStationStatus; int success; int callbackDone; int /*<<< orphan*/  shutdown_timer; scalar_t__ connecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOFTAP_MODE ; 
 int /*<<< orphan*/  STATION_IF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  enduser_setup_stop_callback ; 
 int /*<<< orphan*/  ipaddr ; 
 int /*<<< orphan*/  manual ; 
 int /*<<< orphan*/  FUNC6 (struct ip_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,...) ; 
 TYPE_2__* state ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ip_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 

__attribute__((used)) static void FUNC15(void *p)
{
  FUNC0("enduser_setup_check_station");

  (void)p;
  struct ip_info ip;
  FUNC6(&ip, 0, sizeof(struct ip_info));

  FUNC11(STATION_IF, &ip);

  int i;
  char has_ip = 0;
  for (i = 0; i < sizeof(struct ip_info); ++i)
  {
    has_ip |= ((char *) &ip)[i];
  }

  uint8_t currChan = FUNC10();

  if (has_ip == 0)
  {
    /* No IP Address yet, so check the reported status */
    uint8_t curr_status = FUNC14();
    char buf[20];
    FUNC9(buf, "status=%d,chan=%d", curr_status, currChan);
    FUNC0(buf);

    if (curr_status == 2 || curr_status == 3 || curr_status == 4)
    {
      state->connecting = 0;

      /* If the status is an error status and the channel changed, then cache the
       * status to state since the Station won't be able to report the same status
       * after switching the channel back to the SoftAP's
       */
      if (currChan != state->softAPchannel) {
        state->lastStationStatus = curr_status;

        FUNC0("Turning off Station due to different channel than AP");

        FUNC13();
        FUNC12(SOFTAP_MODE);
        FUNC3();
      }
   }
   return;
  }

  FUNC9 (ipaddr, "%d.%d.%d.%d", FUNC1(&ip.ip.addr));

  state->success = 1;
  state->lastStationStatus = 5; /*  We have an IP Address, so the status is 5 (as of SDK 1.5.1) */
  state->connecting = 0;

#if ENDUSER_SETUP_DEBUG_ENABLE
  char debuginfo[100];
  sprintf(debuginfo, "AP_CHAN: %d, STA_CHAN: %d", state->softAPchannel, currChan);
  ENDUSER_SETUP_DEBUG(debuginfo);
#endif

  if (currChan == state->softAPchannel)
  {
    FUNC5();
    state->callbackDone = 1;
  }
  else
  {
    FUNC0("Turning off Station due to different channel than AP");
    FUNC13();
    FUNC12(SOFTAP_MODE);
    FUNC3();
  }

  FUNC4();

  /* Trigger shutdown, but allow time for HTTP client to fetch last status. */
  if (!manual)
  {
    FUNC8(&(state->shutdown_timer), enduser_setup_stop_callback, NULL);
    FUNC2(enduser_setup_stop_callback, SWTIMER_RESUME);
      //The function enduser_setup_stop_callback frees services and resources used by enduser setup.
      //My guess: Since it would lead to a memory leak, it's probably best to resume this timer.
    FUNC7(&(state->shutdown_timer), 10*1000, FALSE);
  }
}