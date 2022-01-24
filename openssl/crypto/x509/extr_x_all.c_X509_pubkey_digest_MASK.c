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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_1__ ASN1_BIT_STRING ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*) ; 

int FUNC2(const X509 *data, const EVP_MD *type,
                       unsigned char *md, unsigned int *len)
{
    ASN1_BIT_STRING *key;
    key = FUNC1(data);
    if (!key)
        return 0;
    return FUNC0(key->data, key->length, md, len, type, NULL);
}