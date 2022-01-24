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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  st64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  R_BUF_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline st64 FUNC2(RBuffer *b, ut64 addr, st64 *v) {
	FUNC0 (b, addr, R_BUF_SET);
	return FUNC1 (b, v);
}