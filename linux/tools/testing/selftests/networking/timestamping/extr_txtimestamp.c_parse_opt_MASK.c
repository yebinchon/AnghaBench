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

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_RAW ; 
 scalar_t__ SOCK_STREAM ; 
 void* cfg_delay_ack ; 
 void* cfg_delay_snd ; 
 int cfg_do_listen ; 
 int cfg_do_pktinfo ; 
 int /*<<< orphan*/  cfg_ipproto ; 
 int cfg_loop_nodata ; 
 int cfg_no_delay ; 
 void* cfg_num_pkts ; 
 int cfg_payload_len ; 
 int cfg_poll_timeout ; 
 scalar_t__ cfg_proto ; 
 int cfg_show_payload ; 
 int cfg_use_cmsg ; 
 int cfg_use_pf_packet ; 
 void* dest_port ; 
 scalar_t__ do_ipv4 ; 
 scalar_t__ do_ipv6 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(int argc, char **argv)
{
	int proto_count = 0;
	int c;

	while ((c = FUNC1(argc, argv, "46c:CDFhIl:Lnp:PrRuv:V:x")) != -1) {
		switch (c) {
		case '4':
			do_ipv6 = 0;
			break;
		case '6':
			do_ipv4 = 0;
			break;
		case 'c':
			cfg_num_pkts = FUNC2(optarg, NULL, 10);
			break;
		case 'C':
			cfg_use_cmsg = true;
			break;
		case 'D':
			cfg_no_delay = true;
			break;
		case 'F':
			cfg_poll_timeout = -1;
			break;
		case 'I':
			cfg_do_pktinfo = true;
			break;
		case 'l':
			cfg_payload_len = FUNC2(optarg, NULL, 10);
			break;
		case 'L':
			cfg_do_listen = true;
			break;
		case 'n':
			cfg_loop_nodata = true;
			break;
		case 'p':
			dest_port = FUNC2(optarg, NULL, 10);
			break;
		case 'P':
			proto_count++;
			cfg_use_pf_packet = true;
			cfg_proto = SOCK_DGRAM;
			cfg_ipproto = 0;
			break;
		case 'r':
			proto_count++;
			cfg_proto = SOCK_RAW;
			cfg_ipproto = IPPROTO_UDP;
			break;
		case 'R':
			proto_count++;
			cfg_proto = SOCK_RAW;
			cfg_ipproto = IPPROTO_RAW;
			break;
		case 'u':
			proto_count++;
			cfg_proto = SOCK_DGRAM;
			cfg_ipproto = IPPROTO_UDP;
			break;
		case 'v':
			cfg_delay_snd = FUNC2(optarg, NULL, 10);
			break;
		case 'V':
			cfg_delay_ack = FUNC2(optarg, NULL, 10);
			break;
		case 'x':
			cfg_show_payload = true;
			break;
		case 'h':
		default:
			FUNC3(argv[0]);
		}
	}

	if (!cfg_payload_len)
		FUNC0(1, 0, "payload may not be nonzero");
	if (cfg_proto != SOCK_STREAM && cfg_payload_len > 1472)
		FUNC0(1, 0, "udp packet might exceed expected MTU");
	if (!do_ipv4 && !do_ipv6)
		FUNC0(1, 0, "pass -4 or -6, not both");
	if (proto_count > 1)
		FUNC0(1, 0, "pass -P, -r, -R or -u, not multiple");
	if (cfg_do_pktinfo && cfg_use_pf_packet)
		FUNC0(1, 0, "cannot ask for pktinfo over pf_packet");

	if (optind != argc - 1)
		FUNC0(1, 0, "missing required hostname argument");
}