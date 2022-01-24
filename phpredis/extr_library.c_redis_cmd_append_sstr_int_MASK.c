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
typedef  int /*<<< orphan*/  int_buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char*,int,char*,int) ; 

int FUNC2(smart_string *str, int append) {
    char int_buf[32];
    int int_len = FUNC1(int_buf, sizeof(int_buf), "%d", append);
    return FUNC0(str, int_buf, int_len);
}