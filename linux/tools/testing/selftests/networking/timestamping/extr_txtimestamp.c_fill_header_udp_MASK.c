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
struct udphdr {scalar_t__ check; void* len; void* dest; void* source; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ cfg_payload_len ; 
 scalar_t__ dest_port ; 
 scalar_t__ FUNC0 (struct udphdr*,int) ; 
 void* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(void *p, bool is_ipv4)
{
	struct udphdr *udph = p;

	udph->source = FUNC1(dest_port + 1);	/* spoof */
	udph->dest   = FUNC1(dest_port);
	udph->len    = FUNC1(sizeof(*udph) + cfg_payload_len);
	udph->check  = 0;

	udph->check  = FUNC0(udph, is_ipv4 ? sizeof(struct in_addr) :
						    sizeof(struct in6_addr));
}