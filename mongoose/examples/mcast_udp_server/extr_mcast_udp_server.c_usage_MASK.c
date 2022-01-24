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
 char* DEFAULT_PORT ; 
 char* MCAST_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(char **argv) {
  FUNC1(stderr, "%s: -i address_of_mcast_interface [ -g %s ] [ -p %s ]\n",
          argv[0], MCAST_GROUP, DEFAULT_PORT);
  FUNC0(1);
}