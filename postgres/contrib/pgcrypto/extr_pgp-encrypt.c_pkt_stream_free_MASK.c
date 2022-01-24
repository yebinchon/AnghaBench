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
struct PktStreamStat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct PktStreamStat*) ; 
 int /*<<< orphan*/  FUNC1 (struct PktStreamStat*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void *priv)
{
	struct PktStreamStat *st = priv;

	FUNC1(st, 0, sizeof(*st));
	FUNC0(st);
}