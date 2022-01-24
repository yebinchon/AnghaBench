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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mutex_stdout ; 
 int FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ quiet ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  stdout ; 
 double FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (int who, int n)
{
  int		i;
  static int	nchars = 0;
  double	f = 0.0;

  if (quiet)
    i = 0;
  else {
    /*
     * get lock on stdout
     */
    FUNC0(FUNC3 (&mutex_stdout) == 0);

    /*
     * do our job
     */
    i = FUNC2 ("%c", "0123456789abcdefghijklmnopqrstuvwxyz"[who]);

    if (!(++nchars % 50))
      FUNC2 ("\n");

    FUNC1 (stdout);

    /*
     * release lock on stdout
     */
    FUNC0(FUNC4 (&mutex_stdout) == 0);
  }

  n = FUNC5 () % 10000;	/* ignore incoming 'n' */
  f = FUNC6 (n);

  /* This prevents the statement above from being optimised out */
  if (f > 0.0)
    return(n);

  return (n);
}