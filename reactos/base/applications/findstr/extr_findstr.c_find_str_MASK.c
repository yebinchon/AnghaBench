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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_STR ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 char FUNC6 (char) ; 

int
FUNC7 (char *sz, FILE *p, int invert_search,
          int count_lines, int number_output, int ignore_case, int at_start, int literal_search,
		  int at_end, int reg_express, int exact_match, int sub_dirs, int only_fname)
{
  int i, length;
  long line_number = 0, total_lines = 0;
  char *c, temp_str[MAX_STR], this_line[MAX_STR];

  /* Convert to upper if needed */
  if (ignore_case)
    {
      length = FUNC4 (sz);
      for (i = 0; i < length; i++)
	sz[i] = FUNC6 (sz[i]);
    }

  /* Scan the file until EOF */
  while (FUNC0 (temp_str, MAX_STR, p) != NULL)
    {
      /* Remove the trailing newline */
      length = FUNC4 (temp_str);
      if (temp_str[length-1] == '\n')
	{
	  temp_str[length-1] = '\0';
	}

      /* Increment number of lines */
      line_number++;
      FUNC3 (this_line, temp_str);

      /* Convert to upper if needed */
      if (ignore_case)
	{
	  for (i = 0; i < length; i++)
	    {
	      temp_str[i] = FUNC6 (temp_str[i]);
	    }
	}

      /* Locate the substring */

      /* strstr() returns a pointer to the first occurrence in the
       string of the substring */
      c = FUNC5 (temp_str, sz);

      if ( ((invert_search) ? (c == NULL) : (c != NULL)) )
	{
	  if (!count_lines)
	    {
	      if (number_output)
		FUNC1 ("%ld:", line_number);

	      /* Print the line of text */
	      FUNC2 (this_line);
	    }

	  total_lines++;
	} /* long if */
    } /* while fgets */

  if (count_lines)
    {
      /* Just show num. lines that contain the string */
      FUNC1 ("%ld\n", total_lines);
    }


 /* RETURN: If the string was found at least once, returns 1.
  * If the string was not found at all, returns 0.
  */
  return (total_lines > 0 ? 1 : 0);
}