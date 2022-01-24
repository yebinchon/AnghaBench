#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bc_num ;
struct TYPE_20__ {int n_len; scalar_t__ n_sign; scalar_t__ n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int MUL_SMALL_DIGITS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,TYPE_1__*,int,TYPE_1__**,int) ; 
 int /*<<< orphan*/  _zero_ ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int mul_base_digits ; 
 TYPE_1__* FUNC11 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC12 (bc_num u, int ulen, bc_num v, int vlen, bc_num *prod,
	     int full_scale)
{
  bc_num u0, u1, v0, v1;
  bc_num m1, m2, m3, d1, d2;
  int n, prodlen, m1zero;
  int d1len, d2len;

  /* Base case? */
  if ((ulen+vlen) < mul_base_digits
      || ulen < MUL_SMALL_DIGITS
      || vlen < MUL_SMALL_DIGITS ) {
    FUNC4 (u, ulen, v, vlen, prod, full_scale);
    return;
  }

  /* Calculate n -- the u and v split point in digits. */
  n = (FUNC1(ulen, vlen)+1) / 2;

  /* Split u and v. */
  if (ulen < n) {
    u1 = FUNC5 (FUNC0(_zero_));
    u0 = FUNC11 (ulen,0, u->n_value);
  } else {
    u1 = FUNC11 (ulen-n, 0, u->n_value);
    u0 = FUNC11 (n, 0, u->n_value+ulen-n);
  }
  if (vlen < n) {
    v1 = FUNC5 (FUNC0(_zero_));
    v0 = FUNC11 (vlen,0, v->n_value);
  } else {
    v1 = FUNC11 (vlen-n, 0, v->n_value);
    v0 = FUNC11 (n, 0, v->n_value+vlen-n);
    }
  FUNC2 (u1);
  FUNC2 (u0);
  FUNC2 (v1);
  FUNC2 (v0);

  m1zero = FUNC8(u1) || FUNC8(v1);

  /* Calculate sub results ... */

  FUNC7(&d1);
  FUNC7(&d2);
  FUNC10 (u1, u0, &d1, 0);
  d1len = d1->n_len;
  FUNC10 (v0, v1, &d2, 0);
  d2len = d2->n_len;


  /* Do recursive multiplies and shifted adds. */
  if (m1zero)
    m1 = FUNC5 (FUNC0(_zero_));
  else
    FUNC12 (u1, u1->n_len, v1, v1->n_len, &m1, 0);

  if (FUNC8(d1) || FUNC8(d2))
    m2 = FUNC5 (FUNC0(_zero_));
  else
    FUNC12 (d1, d1len, d2, d2len, &m2, 0);

  if (FUNC8(u0) || FUNC8(v0))
    m3 = FUNC5 (FUNC0(_zero_));
  else
    FUNC12 (u0, u0->n_len, v0, v0->n_len, &m3, 0);

  /* Initialize product */
  prodlen = ulen+vlen+1;
  *prod = FUNC9(prodlen, 0);

  if (!m1zero) {
    FUNC3 (*prod, m1, 2*n, 0);
    FUNC3 (*prod, m1, n, 0);
  }
  FUNC3 (*prod, m3, n, 0);
  FUNC3 (*prod, m3, 0, 0);
  FUNC3 (*prod, m2, n, d1->n_sign != d2->n_sign);

  /* Now clean up! */
  FUNC6 (&u1);
  FUNC6 (&u0);
  FUNC6 (&v1);
  FUNC6 (&m1);
  FUNC6 (&v0);
  FUNC6 (&m2);
  FUNC6 (&m3);
  FUNC6 (&d1);
  FUNC6 (&d2);
}