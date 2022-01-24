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
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 unsigned int const S_SCRIPT ; 
 int FUNC0 (struct argv const*,struct env_set const*,unsigned int const,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 

__attribute__((used)) static inline bool
FUNC2(const struct argv *a, const struct env_set *es,
                   const unsigned int flags, const char *hook)
{
    char msg[256];

    FUNC1(msg, sizeof(msg),
                     "WARNING: Failed running command (%s)", hook);
    return FUNC0(a, es, flags | S_SCRIPT, msg);
}