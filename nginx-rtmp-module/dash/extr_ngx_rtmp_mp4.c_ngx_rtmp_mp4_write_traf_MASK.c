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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_mp4_sample_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_buf_t *b, uint32_t earliest_pres_time,
    uint32_t sample_count, ngx_rtmp_mp4_sample_t *samples,
    ngx_uint_t sample_mask, u_char *moof_pos)
{
    u_char  *pos;

    pos = FUNC0(b, "traf");

    FUNC3(b);
    FUNC2(b, earliest_pres_time);
    FUNC4(b, sample_count, samples, sample_mask, moof_pos);

    FUNC1(b, pos);

    return NGX_OK;
}