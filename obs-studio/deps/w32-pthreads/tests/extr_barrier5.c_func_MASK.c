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
typedef  int /*<<< orphan*/  LPLONG ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  barrier ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  totalThreadCrossings ; 

void *
FUNC4(void * crossings)
{
  int result;
  int serialThreads = 0;

  while ((LONG)(size_t)crossings >= (LONG)FUNC0((LPLONG)&totalThreadCrossings))
    {
      result = FUNC3(&barrier);

      if (result == PTHREAD_BARRIER_SERIAL_THREAD)
        {
          serialThreads++;
        }
      else if (result != 0)
        {
          FUNC2("Barrier failed: result = %s\n", error_string[result]);
          FUNC1(stdout);
          return NULL;
        }
    }

  return (void*)(size_t)serialThreads;
}