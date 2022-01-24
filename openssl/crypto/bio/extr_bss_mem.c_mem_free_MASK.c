#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {struct TYPE_6__* readp; } ;
typedef  TYPE_1__ BIO_BUF_MEM ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(BIO *a)
{
    BIO_BUF_MEM *bb;

    if (a == NULL)
        return 0;

    bb = (BIO_BUF_MEM *)a->ptr;
    if (!FUNC1(a))
        return 0;
    FUNC0(bb->readp);
    FUNC0(bb);
    return 1;
}