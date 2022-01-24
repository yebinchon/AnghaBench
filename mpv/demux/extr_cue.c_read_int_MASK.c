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
struct bstr {scalar_t__ len; char* start; } ;

/* Variables and functions */
 struct bstr FUNC0 (struct bstr) ; 
 scalar_t__ FUNC1 (struct bstr,struct bstr*,int) ; 

__attribute__((used)) static int FUNC2(struct bstr *data, bool two_digit)
{
    *data = FUNC0(*data);
    if (data->len && data->start[0] == '-')
        return -1;
    struct bstr s = *data;
    int res = (int)FUNC1(s, &s, 10);
    if (data->len == s.len || (two_digit && data->len - s.len > 2))
        return -1;
    *data = s;
    return res;
}