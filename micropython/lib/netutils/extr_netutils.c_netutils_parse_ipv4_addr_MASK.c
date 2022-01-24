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
typedef  int uint8_t ;
typedef  scalar_t__ netutils_endian_t ;
typedef  int mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int NETUTILS_IPV4ADDR_BUFSIZE ; 
 scalar_t__ NETUTILS_LITTLE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(mp_obj_t addr_in, uint8_t *out_ip, netutils_endian_t endian) {
    size_t addr_len;
    const char *addr_str = FUNC1(addr_in, &addr_len);
    if (addr_len == 0) {
        // special case of no address given
        FUNC0(out_ip, 0, NETUTILS_IPV4ADDR_BUFSIZE);
        return;
    }
    const char *s = addr_str;
    const char *s_top = addr_str + addr_len;
    for (mp_uint_t i = 3 ; ; i--) {
        mp_uint_t val = 0;
        for (; s < s_top && *s != '.'; s++) {
            val = val * 10 + *s - '0';
        }
        if (endian == NETUTILS_LITTLE) {
            out_ip[i] = val;
        } else {
            out_ip[NETUTILS_IPV4ADDR_BUFSIZE - 1 - i] = val;
        }
        if (i == 0 && s == s_top) {
            return;
        } else if (i > 0 && s < s_top && *s == '.') {
            s++;
        } else {
            FUNC2("invalid arguments");
        }
    }
}