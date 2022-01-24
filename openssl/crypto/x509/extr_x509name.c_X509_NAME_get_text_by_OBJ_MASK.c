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
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_3__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC4(X509_NAME *name, const ASN1_OBJECT *obj,
                              char *buf, int len)
{
    int i;
    const ASN1_STRING *data;

    i = FUNC2(name, obj, -1);
    if (i < 0)
        return -1;
    data = FUNC0(FUNC1(name, i));
    if (buf == NULL)
        return data->length;
    if (len <= 0)
        return 0;
    i = (data->length > (len - 1)) ? (len - 1) : data->length;
    FUNC3(buf, data->data, i);
    buf[i] = '\0';
    return i;
}