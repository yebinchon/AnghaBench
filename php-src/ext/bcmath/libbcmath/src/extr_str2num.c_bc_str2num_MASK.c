#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_7__ {char* n_value; void* n_sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 char FALSE ; 
 int FUNC2 (int,int) ; 
 void* MINUS ; 
 void* PLUS ; 
 char TRUE ; 
 int /*<<< orphan*/  _zero_ ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int) ; 

int
FUNC8 (bc_num *num, char *str, int scale)
{
  int digits, strscale;
  char *ptr, *nptr;
  char zero_int;

  /* Prepare num. */
  FUNC4 (num);

  /* Check for valid number and count digits. */
  ptr = str;
  digits = 0;
  strscale = 0;
  zero_int = FALSE;
  if ( (*ptr == '+') || (*ptr == '-'))  ptr++;  /* Sign */
  while (*ptr == '0') ptr++;			/* Skip leading zeros. */
  while (FUNC7((int)*ptr)) ptr++, digits++;	/* digits */
  if (*ptr == '.') ptr++;			/* decimal point */
  while (FUNC7((int)*ptr)) ptr++, strscale++;	/* digits */
  if ((*ptr != '\0') || (digits+strscale == 0))
    {
      *num = FUNC3 (FUNC0(_zero_));
      return *ptr == '\0';
    }

  /* Adjust numbers and allocate storage and initialize fields. */
  strscale = FUNC2(strscale, scale);
  if (digits == 0)
    {
      zero_int = TRUE;
      digits = 1;
    }
  *num = FUNC6 (digits, strscale);

  /* Build the whole number. */
  ptr = str;
  if (*ptr == '-')
    {
      (*num)->n_sign = MINUS;
      ptr++;
    }
  else
    {
      (*num)->n_sign = PLUS;
      if (*ptr == '+') ptr++;
    }
  while (*ptr == '0') ptr++;			/* Skip leading zeros. */
  nptr = (*num)->n_value;
  if (zero_int)
    {
      *nptr++ = 0;
      digits = 0;
    }
  for (;digits > 0; digits--)
    *nptr++ = FUNC1(*ptr++);


  /* Build the fractional part. */
  if (strscale > 0)
    {
      ptr++;  /* skip the decimal point! */
      for (;strscale > 0; strscale--)
	*nptr++ = FUNC1(*ptr++);
    }

  if (FUNC5 (*num))
    (*num)->n_sign = PLUS;

  return 1;
}