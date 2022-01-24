#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread_arg {int /*<<< orphan*/  client; int /*<<< orphan*/  fname; TYPE_1__* backend; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {char* name; scalar_t__ (* load ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread_arg*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct thread_arg*) ; 

__attribute__((used)) static void *FUNC9(void *p)
{
    FUNC4(FUNC5());

    struct thread_arg *arg = p;

    char name[90];
    FUNC6(name, sizeof(name), "%s (%s)", arg->backend->name,
             FUNC2(arg->client));
    FUNC1(name);

    if (arg->backend->load(arg->client, arg->fname) < 0)
        FUNC0(arg, "Could not load %s %s\n", arg->backend->name, arg->fname);

    FUNC3(arg->client);
    FUNC8(arg);
    return NULL;
}