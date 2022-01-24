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
struct SMACK {unsigned int is_nocase; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct SMACK*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (char const*) ; 

struct SMACK *
FUNC6(const char *name, unsigned nocase)
{
    struct SMACK *smack;

    smack = (struct SMACK *)FUNC2(sizeof (struct SMACK));
    if (smack == NULL) {
        FUNC1(stderr, "%s: out of memory error\n", "smack");
        FUNC0(1);
    }
    FUNC4 (smack, 0, sizeof (struct SMACK));

    smack->is_nocase = nocase;
    smack->name = (char*)FUNC2(FUNC5(name)+1);
    if (smack->name == NULL) {
        FUNC1(stderr, "%s: out of memory error\n", "smack");
        FUNC0(1);
    }
    FUNC3(smack->name, name, FUNC5(name)+1);
    return smack;
}