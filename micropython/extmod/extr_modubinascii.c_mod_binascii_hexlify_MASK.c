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
typedef  scalar_t__ mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_7__ {int len; int* buf; } ;
typedef  TYPE_2__ mp_buffer_info_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  MP_BUFFER_READ ; 
 int /*<<< orphan*/  mp_const_empty_bytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  mp_type_bytes ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 

mp_obj_t FUNC4(size_t n_args, const mp_obj_t *args) {
    // Second argument is for an extension to allow a separator to be used
    // between values.
    const char *sep = NULL;
    mp_buffer_info_t bufinfo;
    FUNC0(args[0], &bufinfo, MP_BUFFER_READ);

    // Code below assumes non-zero buffer length when computing size with
    // separator, so handle the zero-length case here.
    if (bufinfo.len == 0) {
        return mp_const_empty_bytes;
    }

    vstr_t vstr;
    size_t out_len = bufinfo.len * 2;
    if (n_args > 1) {
        // 1-char separator between hex numbers
        out_len += bufinfo.len - 1;
        sep = FUNC2(args[1]);
    }
    FUNC3(&vstr, out_len);
    byte *in = bufinfo.buf, *out = (byte*)vstr.buf;
    for (mp_uint_t i = bufinfo.len; i--;) {
        byte d = (*in >> 4);
        if (d > 9) {
            d += 'a' - '9' - 1;
        }
        *out++ = d + '0';
        d = (*in++ & 0xf);
        if (d > 9) {
            d += 'a' - '9' - 1;
        }
        *out++ = d + '0';
        if (sep != NULL && i != 0) {
            *out++ = *sep;
        }
    }
    return FUNC1(&mp_type_bytes, &vstr);
}