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
typedef  int /*<<< orphan*/  input ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int ENABLE_LINE_INPUT ; 
 int ENABLE_PROCESSED_INPUT ; 
 scalar_t__ FILE_TYPE_CHAR ; 
 scalar_t__ FUNC0 (scalar_t__,int*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC3 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,char const*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 

char *FUNC7 (const char * prompt)
{
  static char input[256];
  HANDLE in;
  HANDLE err;
  DWORD    count;

  in = FUNC2 (STD_INPUT_HANDLE);
  err = FUNC2 (STD_ERROR_HANDLE);

  if (in == INVALID_HANDLE_VALUE || err == INVALID_HANDLE_VALUE)
    return NULL;

  if (FUNC5 (err, prompt, FUNC6 (prompt), &count, NULL))
    {
      int istty = (FUNC1 (in) == FILE_TYPE_CHAR);
      DWORD old_flags;
      int rc;

      if (istty)
    {
      if (FUNC0 (in, &old_flags))
        FUNC4 (in, ENABLE_LINE_INPUT | ENABLE_PROCESSED_INPUT);
      else
        istty = 0;
    }
      /* Need to read line one byte at time to avoid blocking, if not a
         tty, so always do it this way.  */
      count = 0;
      while (1)
    {
      DWORD  dummy;
      char   one_char;

      rc = FUNC3 (in, &one_char, 1, &dummy, NULL);
      if (rc == 0)
        break;
      if (one_char == '\r')
        {
          /* CR is always followed by LF if reading from tty.  */
          if (istty)
        continue;
          else
        break;
        }
      if (one_char == '\n')
        break;
      /* Silently truncate password string if overly long.  */
      if (count < sizeof (input) - 1)
        input[count++] = one_char;
    }
      input[count] = '\0';

      FUNC5 (err, "\r\n", 2, &count, NULL);
      if (istty)
    FUNC4 (in, old_flags);
      if (rc)
    return input;
    }

  return NULL;
}