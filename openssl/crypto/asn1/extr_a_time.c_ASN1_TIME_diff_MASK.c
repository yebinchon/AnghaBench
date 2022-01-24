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
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,struct tm*) ; 
 int FUNC1 (int*,int*,struct tm*,struct tm*) ; 

int FUNC2(int *pday, int *psec,
                   const ASN1_TIME *from, const ASN1_TIME *to)
{
    struct tm tm_from, tm_to;

    if (!FUNC0(from, &tm_from))
        return 0;
    if (!FUNC0(to, &tm_to))
        return 0;
    return FUNC1(pday, psec, &tm_from, &tm_to);
}