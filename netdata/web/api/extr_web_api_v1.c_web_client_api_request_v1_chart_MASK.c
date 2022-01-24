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
struct web_client {int dummy; } ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  rrd_stats_api_v1_chart ; 
 int FUNC0 (int /*<<< orphan*/ *,struct web_client*,char*,int /*<<< orphan*/ ) ; 

inline int FUNC1(RRDHOST *host, struct web_client *w, char *url) {
    return FUNC0(host, w, url, rrd_stats_api_v1_chart);
}