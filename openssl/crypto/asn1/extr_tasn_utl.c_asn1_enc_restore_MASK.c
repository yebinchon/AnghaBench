#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; int /*<<< orphan*/  enc; scalar_t__ modified; } ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  TYPE_1__ ASN1_ENCODING ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC2(int *len, unsigned char **out, const ASN1_VALUE **pval,
                     const ASN1_ITEM *it)
{
    const ASN1_ENCODING *enc = FUNC0(pval, it);

    if (enc == NULL || enc->modified)
        return 0;
    if (out) {
        FUNC1(*out, enc->enc, enc->len);
        *out += enc->len;
    }
    if (len != NULL)
        *len = enc->len;
    return 1;
}