#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(const TValue*t1,const TValue*t2){
if(FUNC5(t1)!=FUNC5(t2))return 0;
else switch(FUNC5(t1)){
case 0:
return 1;
case 3:
return FUNC2(FUNC3(t1),FUNC3(t2));
case 1:
return FUNC0(t1)==FUNC0(t2);
case 2:
return FUNC4(t1)==FUNC4(t2);
default:
return FUNC1(t1)==FUNC1(t2);
}
}