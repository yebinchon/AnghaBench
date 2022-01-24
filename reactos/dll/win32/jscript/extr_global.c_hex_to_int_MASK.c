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
typedef  int WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const) ; 
 char FUNC1 (int const) ; 

__attribute__((used)) static inline int FUNC2(const WCHAR wch) {
    if(FUNC1(wch)>='A' && FUNC1(wch)<='F') return FUNC1(wch)-'A'+10;
    if(FUNC0(wch)) return wch-'0';
    return -1;
}