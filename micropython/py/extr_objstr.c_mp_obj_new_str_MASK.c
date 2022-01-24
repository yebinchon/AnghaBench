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
typedef  scalar_t__ qstr ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ MP_QSTRnull ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  mp_type_str ; 
 scalar_t__ FUNC2 (char const*,size_t) ; 

mp_obj_t FUNC3(const char* data, size_t len) {
    qstr q = FUNC2(data, len);
    if (q != MP_QSTRnull) {
        // qstr with this data already exists
        return FUNC0(q);
    } else {
        // no existing qstr, don't make one
        return FUNC1(&mp_type_str, (const byte*)data, len);
    }
}