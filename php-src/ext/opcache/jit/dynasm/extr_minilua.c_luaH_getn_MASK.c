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
struct TYPE_4__ {unsigned int sizearray; int /*<<< orphan*/ * node; int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int /*<<< orphan*/  dummynode_ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC2(Table*t){
unsigned int j=t->sizearray;
if(j>0&&FUNC0(&t->array[j-1])){
unsigned int i=0;
while(j-i>1){
unsigned int m=(i+j)/2;
if(FUNC0(&t->array[m-1]))j=m;
else i=m;
}
return i;
}
else if(t->node==(&dummynode_))
return j;
else return FUNC1(t,j);
}