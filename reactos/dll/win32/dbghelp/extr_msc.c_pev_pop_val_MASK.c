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
struct pevaluator {int dummy; } ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int BOOL ;

/* Variables and functions */
 int PEV_MAX_LEN ; 
 scalar_t__ FUNC0 (struct pevaluator*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pevaluator*,char*) ; 

__attribute__((used)) static BOOL  FUNC2(struct pevaluator* pev, DWORD_PTR* val)
{
    char        p[PEV_MAX_LEN];

    return FUNC1(pev, p) && FUNC0(pev, p, val);
}