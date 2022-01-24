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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 void* PTHREAD_CANCELED ; 
 int /*<<< orphan*/  PTW32_ALERTABLE_ASYNC_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_sleep ; 
 int /*<<< orphan*/  test_udp ; 
 int /*<<< orphan*/  test_wait ; 

int
FUNC7 ()
{
  pthread_t t;
  void *result;

  if (FUNC6 (PTW32_ALERTABLE_ASYNC_CANCEL))
    {
      FUNC2 ("Cancel sleeping thread.\n");
      FUNC1 (FUNC4 (&t, NULL, test_sleep, NULL) == 0);
      /* Sleep for a while; then cancel */
      FUNC0 (100);
      FUNC1 (FUNC3 (t) == 0);
      FUNC1 (FUNC5 (t, &result) == 0);
      FUNC1 (result == PTHREAD_CANCELED && "test_sleep" != NULL);

      FUNC2 ("Cancel waiting thread.\n");
      FUNC1 (FUNC4 (&t, NULL, test_wait, NULL) == 0);
      /* Sleep for a while; then cancel. */
      FUNC0 (100);
      FUNC1 (FUNC3 (t) == 0);
      FUNC1 (FUNC5 (t, &result) == 0);
      FUNC1 (result == PTHREAD_CANCELED && "test_wait");

      FUNC2 ("Cancel blocked thread (blocked on network I/O).\n");
      FUNC1 (FUNC4 (&t, NULL, test_udp, NULL) == 0);
      /* Sleep for a while; then cancel. */
      FUNC0 (100);
      FUNC1 (FUNC3 (t) == 0);
      FUNC1 (FUNC5 (t, &result) == 0);
      FUNC1 (result == PTHREAD_CANCELED && "test_udp" != NULL);
    }
  else
    {
      FUNC2 ("Alertable async cancel not available.\n");
    }

  /*
   * Success.
   */
  return 0;
}