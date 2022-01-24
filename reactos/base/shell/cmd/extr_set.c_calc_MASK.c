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
typedef  int TCHAR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STRING_INVALID_OPERAND ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC1(INT* lval, TCHAR op, INT rval)
{
    switch ( op )
    {
    case '*':
        *lval *= rval;
        break;
    case '/':
        *lval /= rval;
        break;
    case '%':
        *lval %= rval;
        break;
    case '+':
        *lval += rval;
        break;
    case '-':
        *lval -= rval;
        break;
    case '&':
        *lval &= rval;
        break;
    case '^':
        *lval ^= rval;
        break;
    case '|':
        *lval |= rval;
        break;
    default:
        FUNC0 ( STRING_INVALID_OPERAND );
        return FALSE;
    }
    return TRUE;
}