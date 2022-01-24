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
struct scm_timestamping {int /*<<< orphan*/ * ts; } ;

/* Variables and functions */
#define  SCM_TSTAMP_ACK 130 
#define  SCM_TSTAMP_SCHED 129 
#define  SCM_TSTAMP_SND 128 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  cfg_delay_ack ; 
 int /*<<< orphan*/  cfg_delay_snd ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct scm_timestamping *tss, int tstype,
			    int tskey, int payload_len)
{
	const char *tsname;

	FUNC2(tskey, tstype);

	switch (tstype) {
	case SCM_TSTAMP_SCHED:
		tsname = "  ENQ";
		FUNC3(&tss->ts[0], 0);
		break;
	case SCM_TSTAMP_SND:
		tsname = "  SND";
		FUNC3(&tss->ts[0], cfg_delay_snd);
		break;
	case SCM_TSTAMP_ACK:
		tsname = "  ACK";
		FUNC3(&tss->ts[0], cfg_delay_ack);
		break;
	default:
		FUNC1(1, 0, "unknown timestamp type: %u",
		tstype);
	}
	FUNC0(tsname, &tss->ts[0], tskey, payload_len);
}