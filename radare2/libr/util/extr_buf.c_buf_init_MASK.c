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
struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* init ) (TYPE_2__*,void const*) ;} ;
typedef  TYPE_2__ RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (TYPE_2__*,void const*) ; 

__attribute__((used)) static bool FUNC2(RBuffer *b, const void *user) {
	FUNC0 (b && b->methods, false);
	return b->methods->init? b->methods->init (b, user): true;
}