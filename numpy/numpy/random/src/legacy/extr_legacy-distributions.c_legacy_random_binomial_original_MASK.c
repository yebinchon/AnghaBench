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
typedef  int /*<<< orphan*/  bitgen_t ;
typedef  int /*<<< orphan*/  binomial_t ;
typedef  double RAND_INT_TYPE ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RAND_INT_TYPE FUNC2(bitgen_t *bitgen_state,
                                                     double p,
                                                     RAND_INT_TYPE n,
                                                     binomial_t *binomial) {
  double q;

  if (p <= 0.5) {
    if (p * n <= 30.0) {
      return FUNC1(bitgen_state, n, p, binomial);
    } else {
      return FUNC0(bitgen_state, n, p, binomial);
    }
  } else {
    q = 1.0 - p;
    if (q * n <= 30.0) {
      return n - FUNC1(bitgen_state, n, q, binomial);
    } else {
      return n - FUNC0(bitgen_state, n, q, binomial);
    }
  }
}