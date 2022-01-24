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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  protocol_binary_response_header ;
struct TYPE_6__ {scalar_t__ offset; scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ protocol; TYPE_1__ stats; } ;
typedef  TYPE_2__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int const,char const*,int const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int const,char const*,int const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ binary_prot ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 

__attribute__((used)) static void FUNC4(const char *key, const uint16_t klen,
                  const char *val, const uint32_t vlen,
                  const void *cookie)
{
    /* value without a key is invalid */
    if (klen == 0 && vlen > 0) {
        return ;
    }

    conn *c = (conn*)cookie;

    if (c->protocol == binary_prot) {
        size_t needed = vlen + klen + sizeof(protocol_binary_response_header);
        if (!FUNC3(c, needed)) {
            return ;
        }
        FUNC1(key, klen, val, vlen, c);
    } else {
        size_t needed = vlen + klen + 10; // 10 == "STAT = \r\n"
        if (!FUNC3(c, needed)) {
            return ;
        }
        FUNC0(key, klen, val, vlen, c);
    }

    FUNC2(c->stats.offset <= c->stats.size);
}