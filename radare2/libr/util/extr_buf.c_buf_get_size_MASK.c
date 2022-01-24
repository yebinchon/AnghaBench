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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_size ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static ut64 FUNC2(RBuffer *b) {
	FUNC0 (b && b->methods, UT64_MAX);
	return b->methods->get_size? b->methods->get_size (b): UT64_MAX;
}