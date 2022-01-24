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
struct ad_private {int ad_fullnamelen; int ad_servernamelen; struct ad_private* ad_uaddr; struct ad_private* ad_netid; struct ad_private* ad_timehost; struct ad_private* ad_servername; struct ad_private* ad_fullname; } ;
typedef  struct ad_private AUTH ;

/* Variables and functions */
 struct ad_private* FUNC0 (struct ad_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ad_private*,int) ; 
 int FUNC2 (struct ad_private*) ; 

__attribute__((used)) static void
FUNC3(AUTH *auth)
{
/* LINTED pointer alignment */
	struct ad_private *ad = FUNC0(auth);

	FUNC1(ad->ad_fullname, ad->ad_fullnamelen + 1);
	FUNC1(ad->ad_servername, ad->ad_servernamelen + 1);
	if (ad->ad_timehost)
		FUNC1(ad->ad_timehost, FUNC2(ad->ad_timehost) + 1);
	if (ad->ad_netid)
		FUNC1(ad->ad_netid, FUNC2(ad->ad_netid) + 1);
	if (ad->ad_uaddr)
		FUNC1(ad->ad_uaddr, FUNC2(ad->ad_uaddr) + 1);
	FUNC1(ad, sizeof (struct ad_private));
	FUNC1(auth, sizeof(AUTH));
}