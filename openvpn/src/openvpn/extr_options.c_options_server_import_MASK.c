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
struct options {int dummy; } ;
struct env_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct options*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,unsigned int,unsigned int*,struct env_set*) ; 

void
FUNC2(struct options *o,
                      const char *filename,
                      int msglevel,
                      unsigned int permission_mask,
                      unsigned int *option_types_found,
                      struct env_set *es)
{
    FUNC0(D_PUSH, "OPTIONS IMPORT: reading client specific options from: %s", filename);
    FUNC1(o,
                     filename,
                     0,
                     filename,
                     0,
                     msglevel,
                     permission_mask,
                     option_types_found,
                     es);
}