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
struct section {char* name; struct config_option* values; } ;
struct config_option {struct config_option* next; struct config_option* name; struct config_option* value; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONFIG ; 
 struct config_option* FUNC0 (struct section*,struct config_option*) ; 
 struct config_option* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct section*) ; 
 int /*<<< orphan*/  FUNC3 (struct section*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct config_option*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_option*) ; 
 int /*<<< orphan*/  FUNC7 (struct config_option*) ; 
 void* FUNC8 (char const*) ; 

__attribute__((used)) static inline struct config_option *FUNC9(struct section *co, const char *name, const char *value) {
    FUNC4(D_CONFIG, "Creating config entry for name '%s', value '%s', in section '%s'.", name, value, co->name);

    struct config_option *cv = FUNC1(1, sizeof(struct config_option));
    cv->name = FUNC8(name);
    cv->hash = FUNC7(cv->name);
    cv->value = FUNC8(value);

    struct config_option *found = FUNC0(co, cv);
    if(found != cv) {
        FUNC5("indexing of config '%s' in section '%s': already exists - using the existing one.", cv->name, co->name);
        FUNC6(cv->value);
        FUNC6(cv->name);
        FUNC6(cv);
        return found;
    }

    FUNC3(co);
    struct config_option *cv2 = co->values;
    if(cv2) {
        while (cv2->next) cv2 = cv2->next;
        cv2->next = cv;
    }
    else co->values = cv;
    FUNC2(co);

    return cv;
}