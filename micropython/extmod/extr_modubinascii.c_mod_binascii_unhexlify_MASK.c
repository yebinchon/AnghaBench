#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ buf; } ;
typedef  TYPE_1__ vstr_t ;
typedef  int mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_7__ {int len; int* buf; } ;
typedef  TYPE_2__ mp_buffer_info_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  MP_BUFFER_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  mp_type_bytes ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

mp_obj_t FUNC6(mp_obj_t data) {
    mp_buffer_info_t bufinfo;
    FUNC0(data, &bufinfo, MP_BUFFER_READ);

    if ((bufinfo.len & 1) != 0) {
        FUNC2("odd-length string");
    }
    vstr_t vstr;
    FUNC5(&vstr, bufinfo.len / 2);
    byte *in = bufinfo.buf, *out = (byte*)vstr.buf;
    byte hex_byte = 0;
    for (mp_uint_t i = bufinfo.len; i--;) {
        byte hex_ch = *in++;
        if (FUNC3(hex_ch)) {
            hex_byte += FUNC4(hex_ch);
        } else {
            FUNC2("non-hex digit found");
        }
        if (i & 1) {
            hex_byte <<= 4;
        } else {
            *out++ = hex_byte;
            hex_byte = 0;
        }
    }
    return FUNC1(&mp_type_bytes, &vstr);
}