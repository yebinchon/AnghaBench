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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void *
FUNC4 (void *arg)
{
  HANDLE hEvent;
  DWORD dwEvent;

  FUNC2 (PTHREAD_CANCEL_ENABLE, NULL);
  FUNC3 (PTHREAD_CANCEL_ASYNCHRONOUS, NULL);

  hEvent = FUNC0 (NULL, FALSE, FALSE, NULL);

  dwEvent = FUNC1 (hEvent, 1000);	/* WAIT_IO_COMPLETION */

  return NULL;
}