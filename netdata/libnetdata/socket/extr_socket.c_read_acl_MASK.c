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
typedef  int /*<<< orphan*/  WEB_CLIENT_ACL ;

/* Variables and functions */
 int /*<<< orphan*/  WEB_CLIENT_ACL_BADGE ; 
 int /*<<< orphan*/  WEB_CLIENT_ACL_DASHBOARD ; 
 int /*<<< orphan*/  WEB_CLIENT_ACL_MGMT ; 
 int /*<<< orphan*/  WEB_CLIENT_ACL_NETDATACONF ; 
 int /*<<< orphan*/  WEB_CLIENT_ACL_REGISTRY ; 
 int /*<<< orphan*/  WEB_CLIENT_ACL_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

WEB_CLIENT_ACL FUNC2(char *st) {
    WEB_CLIENT_ACL ret = FUNC0(st);

    if (!FUNC1(st,"dashboard")) ret |= WEB_CLIENT_ACL_DASHBOARD;
    if (!FUNC1(st,"registry")) ret |= WEB_CLIENT_ACL_REGISTRY;
    if (!FUNC1(st,"badges")) ret |= WEB_CLIENT_ACL_BADGE;
    if (!FUNC1(st,"management")) ret |= WEB_CLIENT_ACL_MGMT;
    if (!FUNC1(st,"streaming")) ret |= WEB_CLIENT_ACL_STREAMING;
    if (!FUNC1(st,"netdata.conf")) ret |= WEB_CLIENT_ACL_NETDATACONF;

    return ret;
}