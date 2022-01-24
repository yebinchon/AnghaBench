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
typedef  int /*<<< orphan*/  symbol ;
struct SN_env {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct SN_env*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

extern int FUNC2(struct SN_env * z, int bra, int ket, const symbol * p) {
    return FUNC1(z, bra, ket, FUNC0(p), p);
}