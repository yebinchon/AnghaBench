
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct rtc_timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct pbuf {int payload; } ;
typedef int req ;
struct TYPE_9__ {void* frac; void* sec; } ;
struct TYPE_10__ {int ver; int mode; TYPE_1__ xmit; } ;
typedef TYPE_2__ ntp_frame_t ;
struct TYPE_12__ {size_t server_pos; int kodbits; int attempts; int timer; int pcb; TYPE_1__ cookie; } ;
struct TYPE_11__ {scalar_t__ addr; } ;


 int MAX_ATTEMPTS ;
 int NTP_MEM_ERR ;
 int NTP_PORT ;
 int PBUF_RAM ;
 int PBUF_TRANSPORT ;
 int SNTP_HANDLE_RESULT_ID ;
 int SWTIMER_REG_CB (int ,int ) ;
 int SWTIMER_RESUME ;
 unsigned long const US_TO_FRAC (int ) ;
 int get_zero_base_timeofday (struct rtc_timeval*) ;
 void* htonl (unsigned long const) ;
 int ipaddr_ntoa (TYPE_3__*) ;
 int on_timeout ;
 int os_memcpy (int ,TYPE_2__*,int) ;
 int os_memset (TYPE_2__*,int ,int) ;
 int os_timer_arm (int *,int,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int ,int *) ;
 struct pbuf* pbuf_alloc (int ,int,int ) ;
 int pbuf_free (struct pbuf*) ;
 int rtctime_gettimeofday (struct rtc_timeval*) ;
 int server_count ;
 TYPE_3__* serverp ;
 int sntp_dbg (char*,int,...) ;
 TYPE_4__* state ;
 unsigned long const system_get_time () ;
 int task_post_high (int ,int ) ;
 int task_post_low (int ,int ) ;
 int tasknumber ;
 unsigned long const the_offset ;
 int udp_sendto (int ,struct pbuf*,TYPE_3__*,int ) ;

__attribute__((used)) static void sntp_dosend ()
{
  do {
    if (state->server_pos < 0) {
      os_timer_disarm(&state->timer);
      os_timer_setfn(&state->timer, on_timeout, ((void*)0));
      SWTIMER_REG_CB(on_timeout, SWTIMER_RESUME);


      state->server_pos = 0;
    } else {
      ++state->server_pos;
    }

    if (state->server_pos >= server_count) {
      state->server_pos = 0;
      ++state->attempts;
    }

    if (state->attempts >= MAX_ATTEMPTS || state->attempts * server_count >= 8) {
      task_post_high(tasknumber, SNTP_HANDLE_RESULT_ID);
      return;
    }
  } while (serverp[state->server_pos].addr == 0 || (state->kodbits & (1 << state->server_pos)));

  sntp_dbg("sntp: server %s (%d), attempt %d\n", ipaddr_ntoa(serverp + state->server_pos), state->server_pos, state->attempts);

  struct pbuf *p = pbuf_alloc (PBUF_TRANSPORT, sizeof (ntp_frame_t), PBUF_RAM);
  if (!p) {
    task_post_low(tasknumber, NTP_MEM_ERR);
    return;
  }

  ntp_frame_t req;
  os_memset (&req, 0, sizeof (req));
  req.ver = 4;
  req.mode = 3;
  req.xmit.frac = htonl (system_get_time ());

  state->cookie = req.xmit;

  os_memcpy (p->payload, &req, sizeof (req));
  int ret = udp_sendto (state->pcb, p, serverp + state->server_pos, NTP_PORT);
  sntp_dbg("sntp: send: %d\n", ret);
  pbuf_free (p);



  os_timer_arm (&state->timer, 1000, 0);
}
