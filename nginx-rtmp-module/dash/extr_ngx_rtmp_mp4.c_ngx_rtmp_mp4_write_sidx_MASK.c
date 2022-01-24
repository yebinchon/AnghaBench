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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC6(ngx_buf_t *b, ngx_uint_t reference_size,
    uint32_t earliest_pres_time, uint32_t latest_pres_time)
{
    u_char    *pos;
    uint32_t   duration;

    duration = latest_pres_time - earliest_pres_time;

    pos = FUNC4(b, "sidx");

    /* version */
    FUNC2(b, 0);

    /* reference id */
    FUNC2(b, 1);

    /* timescale */
    FUNC2(b, 1000);

    /* earliest presentation time */
    FUNC2(b, earliest_pres_time);

    /* first offset */
    FUNC2(b, duration); /*TODO*/

    /* reserved */
    FUNC0(b, 0);

    /* reference count = 1 */
    FUNC0(b, 1);

    /* 1st bit is reference type, the rest is reference size */
    FUNC2(b, reference_size);

    /* subsegment duration */
    FUNC2(b, duration);

    /* first bit is startsWithSAP (=1), next 3 bits are SAP type (=001) */
    FUNC3(b, 0x90);

    /* SAP delta time */
    FUNC1(b, 0);

    FUNC5(b, pos);

    return NGX_OK;
}