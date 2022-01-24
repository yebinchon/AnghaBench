#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ jsstr_rope_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(jsstr_rope_t *str, unsigned off, unsigned len, WCHAR *buf)
{
    unsigned left_len = FUNC1(str->left);

    if(left_len <= off) {
        FUNC0(str->right, off-left_len, len, buf);
    }else if(left_len >= len+off) {
        FUNC0(str->left, off, len, buf);
    }else {
        left_len -= off;
        FUNC0(str->left, off, left_len, buf);
        FUNC0(str->right, 0, len-left_len, buf+left_len);
    }
}