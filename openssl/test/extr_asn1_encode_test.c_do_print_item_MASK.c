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
struct TYPE_3__ {scalar_t__ encode_expectations_elem_size; int /*<<< orphan*/  asn1_type; } ;
typedef  TYPE_1__ TEST_PACKAGE ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ DATA_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC6(const TEST_PACKAGE *package)
{
#define DATA_BUF_SIZE 256
    const ASN1_ITEM *i = FUNC0(package->asn1_type);
    ASN1_VALUE *o;
    int ret;

    FUNC2(package->encode_expectations_elem_size <= DATA_BUF_SIZE);
    if ((o = FUNC4(DATA_BUF_SIZE)) == NULL)
        return 0;

    (void)FUNC5((unsigned char*)o,
                     (int)package->encode_expectations_elem_size);
    ret = FUNC1(bio_err, o, 0, i, NULL);
    FUNC3(o);

    return ret;
}