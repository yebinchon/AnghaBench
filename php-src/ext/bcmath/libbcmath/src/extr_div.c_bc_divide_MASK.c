#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_9__ {unsigned int n_scale; int n_len; int* n_value; scalar_t__ n_sign; } ;

/* Variables and functions */
 char FALSE ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 void* MINUS ; 
 void* PLUS ; 
 char TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 (int,unsigned int,int) ; 

int
FUNC10 (bc_num n1, bc_num n2, bc_num *quot, int scale)
{
  bc_num qval;
  unsigned char *num1, *num2;
  unsigned char *ptr1, *ptr2, *n2ptr, *qptr;
  int  scale1, val;
  unsigned int  len1, len2, scale2, qdigits, extra, count;
  unsigned int  qdig, qguess, borrow, carry;
  unsigned char *mval;
  char zero;
  unsigned int  norm;

  /* Test for divide by zero. */
  if (FUNC4 (n2)) return -1;

  /* Test for divide by 1.  If it is we must truncate. */
  if (n2->n_scale == 0)
    {
      if (n2->n_len == 1 && *n2->n_value == 1)
	{
	  qval = FUNC5 (n1->n_len, scale);
	  qval->n_sign = (n1->n_sign == n2->n_sign ? PLUS : MINUS);
	  FUNC8 (&qval->n_value[n1->n_len],0,scale);
	  FUNC7 (qval->n_value, n1->n_value,
		  n1->n_len + FUNC0(n1->n_scale,scale));
	  FUNC3 (quot);
	  *quot = qval;
	}
    }

  /* Set up the divide.  Move the decimal point on n1 by n2's scale.
     Remember, zeros on the end of num2 are wasted effort for dividing. */
  scale2 = n2->n_scale;
  n2ptr = (unsigned char *) n2->n_value+n2->n_len+scale2-1;
  while ((scale2 > 0) && (*n2ptr-- == 0)) scale2--;

  len1 = n1->n_len + scale2;
  scale1 = n1->n_scale - scale2;
  if (scale1 < scale)
    extra = scale - scale1;
  else
    extra = 0;
  num1 = (unsigned char *) FUNC9 (1, n1->n_len+n1->n_scale, extra+2);
  FUNC8 (num1, 0, n1->n_len+n1->n_scale+extra+2);
  FUNC7 (num1+1, n1->n_value, n1->n_len+n1->n_scale);

  len2 = n2->n_len + scale2;
  num2 = (unsigned char *) FUNC9 (1, len2, 1);
  FUNC7 (num2, n2->n_value, len2);
  *(num2+len2) = 0;
  n2ptr = num2;
  while (*n2ptr == 0)
    {
      n2ptr++;
      len2--;
    }

  /* Calculate the number of quotient digits. */
  if (len2 > len1+scale)
    {
      qdigits = scale+1;
      zero = TRUE;
    }
  else
    {
      zero = FALSE;
      if (len2>len1)
	qdigits = scale+1;  	/* One for the zero integer part. */
      else
	qdigits = len1-len2+scale+1;
    }

  /* Allocate and zero the storage for the quotient. */
  qval = FUNC5 (qdigits-scale,scale);
  FUNC8 (qval->n_value, 0, qdigits);

  /* Allocate storage for the temporary storage mval. */
  mval = (unsigned char *) FUNC9 (1, len2, 1);

  /* Now for the full divide algorithm. */
  if (!zero)
    {
      /* Normalize */
      norm =  10 / ((int)*n2ptr + 1);
      if (norm != 1)
	{
	  FUNC2 (num1, len1+scale1+extra+1, norm, num1);
	  FUNC2 (n2ptr, len2, norm, n2ptr);
	}

      /* Initialize divide loop. */
      qdig = 0;
      if (len2 > len1)
	qptr = (unsigned char *) qval->n_value+len2-len1;
      else
	qptr = (unsigned char *) qval->n_value;

      /* Loop */
      while (qdig <= len1+scale-len2)
	{
	  /* Calculate the quotient digit guess. */
	  if (*n2ptr == num1[qdig])
	    qguess = 9;
	  else
	    qguess = (num1[qdig]*10 + num1[qdig+1]) / *n2ptr;

	  /* Test qguess. */
	  if (n2ptr[1]*qguess >
	      (num1[qdig]*10 + num1[qdig+1] - *n2ptr*qguess)*10
	       + num1[qdig+2])
	    {
	      qguess--;
	      /* And again. */
	      if (n2ptr[1]*qguess >
		  (num1[qdig]*10 + num1[qdig+1] - *n2ptr*qguess)*10
		  + num1[qdig+2])
		qguess--;
	    }

	  /* Multiply and subtract. */
	  borrow = 0;
	  if (qguess != 0)
	    {
	      *mval = 0;
	      FUNC2 (n2ptr, len2, qguess, mval+1);
	      ptr1 = (unsigned char *) num1+qdig+len2;
	      ptr2 = (unsigned char *) mval+len2;
	      for (count = 0; count < len2+1; count++)
		{
		  val = (int) *ptr1 - (int) *ptr2-- - borrow;
		  if (val < 0)
		    {
		      val += 10;
		      borrow = 1;
		    }
		  else
		    borrow = 0;
		  *ptr1-- = val;
		}
	    }

	  /* Test for negative result. */
	  if (borrow == 1)
	    {
	      qguess--;
	      ptr1 = (unsigned char *) num1+qdig+len2;
	      ptr2 = (unsigned char *) n2ptr+len2-1;
	      carry = 0;
	      for (count = 0; count < len2; count++)
		{
		  val = (int) *ptr1 + (int) *ptr2-- + carry;
		  if (val > 9)
		    {
		      val -= 10;
		      carry = 1;
		    }
		  else
		    carry = 0;
		  *ptr1-- = val;
		}
	      if (carry == 1) *ptr1 = (*ptr1 + 1) % 10;
	    }

	  /* We now know the quotient digit. */
	  *qptr++ =  qguess;
	  qdig++;
	}
    }

  /* Clean up and return the number. */
  qval->n_sign = ( n1->n_sign == n2->n_sign ? PLUS : MINUS );
  if (FUNC4 (qval)) qval->n_sign = PLUS;
  FUNC1 (qval);
  FUNC3 (quot);
  *quot = qval;

  /* Clean up temporary storage. */
  FUNC6 (mval);
  FUNC6 (num1);
  FUNC6 (num2);

  return 0;	/* Everything is OK. */
}