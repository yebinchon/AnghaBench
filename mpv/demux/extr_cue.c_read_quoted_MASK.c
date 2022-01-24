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
struct bstr {int dummy; } ;

/* Variables and functions */
 struct bstr FUNC0 (struct bstr,int) ; 
 struct bstr FUNC1 (struct bstr) ; 
 struct bstr FUNC2 (struct bstr,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bstr,char) ; 
 char* FUNC4 (void*,struct bstr) ; 
 int /*<<< orphan*/  FUNC5 (struct bstr*,char) ; 

__attribute__((used)) static char *FUNC6(void *talloc_ctx, struct bstr *data)
{
    *data = FUNC1(*data);
    if (!FUNC5(data, '"'))
        return NULL;
    int end = FUNC3(*data, '"');
    if (end < 0)
        return NULL;
    struct bstr res = FUNC2(*data, 0, end);
    *data = FUNC0(*data, end + 1);
    return FUNC4(talloc_ctx, res);
}