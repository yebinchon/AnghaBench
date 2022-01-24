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
struct section {struct section* next; int /*<<< orphan*/  name; int /*<<< orphan*/  values_index; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hash; } ;
struct config {struct section* sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONFIG ; 
 struct section* FUNC0 (struct config*,struct section*) ; 
 int /*<<< orphan*/  appconfig_option_compare ; 
 int /*<<< orphan*/  FUNC1 (struct config*) ; 
 int /*<<< orphan*/  FUNC2 (struct config*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct section* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static inline struct section *FUNC11(struct config *root, const char *section) {
    FUNC5(D_CONFIG, "Creating section '%s'.", section);

    struct section *co = FUNC4(1, sizeof(struct section));
    co->name = FUNC9(section);
    co->hash = FUNC8(co->name);
    FUNC7(&co->mutex);

    FUNC3(&co->values_index, appconfig_option_compare);

    if(FUNC10(FUNC0(root, co) != co))
        FUNC6("INTERNAL ERROR: indexing of section '%s', already exists.", co->name);

    FUNC2(root);
    struct section *co2 = root->sections;
    if(co2) {
        while (co2->next) co2 = co2->next;
        co2->next = co;
    }
    else root->sections = co;
    FUNC1(root);

    return co;
}