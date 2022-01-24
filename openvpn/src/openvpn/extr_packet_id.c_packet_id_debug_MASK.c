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
struct packet_id_rec {int dummy; } ;
struct packet_id_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct packet_id_rec const*,struct packet_id_net const*,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(int msglevel,
                const struct packet_id_rec *p,
                const struct packet_id_net *pin,
                const char *message,
                int value)
{
#ifdef ENABLE_DEBUG
    if (unlikely(check_debug_level(msglevel)))
    {
        packet_id_debug_print(msglevel, p, pin, message, value);
    }
#endif
}