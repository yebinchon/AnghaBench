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
struct TYPE_3__ {int /*<<< orphan*/  attributes; } ;
typedef  TYPE_1__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,unsigned char const*,int) ; 

int FUNC1(EVP_PKEY *key,
                              const ASN1_OBJECT *obj, int type,
                              const unsigned char *bytes, int len)
{
    if (FUNC0(&key->attributes, obj, type, bytes, len))
        return 1;
    return 0;
}