#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* generate_key ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ DH ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 

int FUNC1(DH *dh)
{
    return dh->meth->generate_key(dh);
}