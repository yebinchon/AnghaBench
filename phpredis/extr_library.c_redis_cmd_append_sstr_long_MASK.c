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
typedef  int /*<<< orphan*/  smart_string ;
typedef  int /*<<< orphan*/  long_buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char*,int,char*,long) ; 

int FUNC2(smart_string *str, long append) {
    char long_buf[32];
    int long_len = FUNC1(long_buf, sizeof(long_buf), "%ld", append);
    return FUNC0(str, long_buf, long_len);
}