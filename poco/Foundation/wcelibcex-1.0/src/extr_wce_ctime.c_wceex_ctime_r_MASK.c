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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */

char * FUNC0(const time_t *timer, char *buf)
{
  /*
  XXX - mloskot - it's waiting for localtime_r function.

  ({ struct tm tm; asctime_r (localtime_r (time, &tm), buf); })
  */
  return NULL;
}