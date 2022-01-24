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
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ error_lib; } ;
typedef  TYPE_1__ OSSL_PROVIDER ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const OSSL_PROVIDER *prov,
                            uint32_t reason, const char *fmt, va_list args)
{
    /*
     * If the uppermost 8 bits are non-zero, it's an OpenSSL library
     * error and will be treated as such.  Otherwise, it's a new style
     * provider error and will be treated as such.
     */
    if (FUNC0(reason) != 0) {
        FUNC2(FUNC0(reason), FUNC1(reason), fmt, args);
    } else {
        FUNC2(prov->error_lib, (int)reason, fmt, args);
    }
}