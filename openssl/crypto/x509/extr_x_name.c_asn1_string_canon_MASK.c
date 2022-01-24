#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; unsigned char* data; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int ASN1_MASK_CANON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__ const*) ; 
 int FUNC1 (unsigned char**,TYPE_1__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_UTF8STRING ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 

__attribute__((used)) static int FUNC6(ASN1_STRING *out, const ASN1_STRING *in)
{
    unsigned char *to, *from;
    int len, i;

    /* If type not in bitmask just copy string across */
    if (!(FUNC2(in->type) & ASN1_MASK_CANON)) {
        if (!FUNC0(out, in))
            return 0;
        return 1;
    }

    out->type = V_ASN1_UTF8STRING;
    out->length = FUNC1(&out->data, in);
    if (out->length == -1)
        return 0;

    to = out->data;
    from = to;

    len = out->length;

    /*
     * Convert string in place to canonical form. Ultimately we may need to
     * handle a wider range of characters but for now ignore anything with
     * MSB set and rely on the ossl_isspace() to fail on bad characters without
     * needing isascii or range checks as well.
     */

    /* Ignore leading spaces */
    while (len > 0 && FUNC4(*from)) {
        from++;
        len--;
    }

    to = from + len;

    /* Ignore trailing spaces */
    while (len > 0 && FUNC4(to[-1])) {
        to--;
        len--;
    }

    to = out->data;

    i = 0;
    while (i < len) {
        /* If not ASCII set just copy across */
        if (!FUNC3(*from)) {
            *to++ = *from++;
            i++;
        }
        /* Collapse multiple spaces */
        else if (FUNC4(*from)) {
            /* Copy one space across */
            *to++ = ' ';
            /*
             * Ignore subsequent spaces. Note: don't need to check len here
             * because we know the last character is a non-space so we can't
             * overflow.
             */
            do {
                from++;
                i++;
            }
            while (FUNC4(*from));
        } else {
            *to++ = FUNC5(*from);
            from++;
            i++;
        }
    }

    out->length = to - out->data;

    return 1;

}