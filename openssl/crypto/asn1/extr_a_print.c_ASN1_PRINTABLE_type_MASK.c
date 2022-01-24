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

/* Variables and functions */
 int V_ASN1_IA5STRING ; 
 int V_ASN1_PRINTABLESTRING ; 
 int V_ASN1_T61STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(const unsigned char *s, int len)
{
    int c;
    int ia5 = 0;
    int t61 = 0;

    if (len <= 0)
        len = -1;
    if (s == NULL)
        return V_ASN1_PRINTABLESTRING;

    while ((*s) && (len-- != 0)) {
        c = *(s++);
        if (!FUNC1(c))
            ia5 = 1;
        if (!FUNC0(c))
            t61 = 1;
    }
    if (t61)
        return V_ASN1_T61STRING;
    if (ia5)
        return V_ASN1_IA5STRING;
    return V_ASN1_PRINTABLESTRING;
}