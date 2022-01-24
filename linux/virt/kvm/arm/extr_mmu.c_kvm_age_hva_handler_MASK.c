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
typedef  scalar_t__ u64 ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PMD_SIZE ; 
 scalar_t__ PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, gpa_t gpa, u64 size, void *data)
{
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	FUNC0(size != PAGE_SIZE && size != PMD_SIZE && size != PUD_SIZE);
	if (!FUNC1(kvm, gpa, &pud, &pmd, &pte))
		return 0;

	if (pud)
		return FUNC4(pud);
	else if (pmd)
		return FUNC2(pmd);
	else
		return FUNC3(pte);
}