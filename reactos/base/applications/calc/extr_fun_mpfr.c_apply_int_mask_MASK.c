#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_4__ {int /*<<< orphan*/  mf; } ;
typedef  TYPE_1__ calc_number_t ;
struct TYPE_5__ {int size; } ;

/* Variables and functions */
#define  IDC_RADIO_BYTE 131 
#define  IDC_RADIO_DWORD 130 
#define  IDC_RADIO_QWORD 129 
#define  IDC_RADIO_WORD 128 
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 TYPE_2__ calc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC7(calc_number_t *r)
{
    mpz_t a, mask;

    switch (calc.size) {
    case IDC_RADIO_QWORD:
        FUNC6(mask, "FFFFFFFFFFFFFFFF", 16);
        break;
    case IDC_RADIO_DWORD:
        FUNC6(mask, "00000000FFFFFFFF", 16);
        break;
    case IDC_RADIO_WORD:
        FUNC6(mask, "000000000000FFFF", 16);
        break;
    case IDC_RADIO_BYTE:
        FUNC6(mask, "00000000000000FF", 16);
        break;
    default:
        FUNC5(mask, -1);
    }
    FUNC4(a);
    FUNC0(a, r->mf, MPFR_DEFAULT_RND);
    FUNC2(a, a, mask);
    FUNC1(r->mf, a, MPFR_DEFAULT_RND);
    FUNC3(a);
    FUNC3(mask);
}