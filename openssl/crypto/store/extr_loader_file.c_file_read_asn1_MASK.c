#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; scalar_t__ data; } ;
typedef  TYPE_1__ BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static int FUNC2(BIO *bp, unsigned char **data, long *len)
{
    BUF_MEM *mem = NULL;

    if (FUNC1(bp, &mem) < 0)
        return 0;

    *data = (unsigned char *)mem->data;
    *len = (long)mem->length;
    FUNC0(mem);

    return 1;
}