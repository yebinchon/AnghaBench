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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_buf_t *b)
{
    u_char  *pos;

    pos = FUNC2(b, "mvex");

    FUNC1(b, 0x20);

    FUNC0(b, "trex");

    /* version & flags */
    FUNC1(b, 0);

    /* track id */
    FUNC1(b, 1);

    /* default sample description index */
    FUNC1(b, 1);

    /* default sample duration */
    FUNC1(b, 0);

    /* default sample size, 1024 for AAC */
    FUNC1(b, 0);

    /* default sample flags, key on */
    FUNC1(b, 0);

    FUNC3(b, pos);

    return NGX_OK;
}