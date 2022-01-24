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
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const TValue*key,int*nums){
int k=FUNC0(key);
if(0<k&&k<=(1<<(32-2))){
nums[FUNC1(k)]++;
return 1;
}
else
return 0;
}