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
struct pcap_pkthdr {int dummy; } ;
typedef  int /*<<< orphan*/  pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,struct pcap_pkthdr*) ; 
 unsigned char const* FUNC1 (int /*<<< orphan*/ *,struct pcap_pkthdr*) ; 

__attribute__((used)) static const unsigned char *FUNC2(pcap_t *p, struct pcap_pkthdr *h)
{
#ifdef STATICPCAP
    return pcap_next(p, h);
#endif
    FUNC0(3, p, h);
    return 0;
}