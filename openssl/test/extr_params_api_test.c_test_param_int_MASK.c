#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int len; int* value; } ;
struct TYPE_7__ {int* data; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*) ; 
 TYPE_1__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t const,int*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* raw_values ; 
 int FUNC8 (TYPE_1__*,int*,int) ; 

__attribute__((used)) static int FUNC9(int n)
{
    int in, out;
    unsigned char buf[MAX_LEN], cmp[sizeof(int)];
    const size_t len = raw_values[n].len >= sizeof(int) ?
                       sizeof(int) : raw_values[n].len;
    OSSL_PARAM param = FUNC1("a", NULL);

    FUNC7(buf, 0, sizeof(buf));
    FUNC5(buf, raw_values[n].value, sizeof(in));
    FUNC6(&in, buf, sizeof(in));
    param.data = &out;
    if (!FUNC4(FUNC2(&param, in)))
        return 0;
    FUNC5(cmp, &out, sizeof(out));
    if (!FUNC3(cmp, len, raw_values[n].value, len))
        return 0;
    in = 0;
    if (!FUNC4(FUNC0(&param, &in)))
        return 0;
    FUNC5(cmp, &in, sizeof(in));
    if (!FUNC3(cmp, sizeof(in), raw_values[n].value, sizeof(in)))
        return 0;
    param.data = &out;
    return FUNC8(&param, raw_values[n].value, sizeof(int));
}