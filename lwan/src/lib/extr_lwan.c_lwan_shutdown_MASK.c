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
struct TYPE_2__ {int /*<<< orphan*/  config_file_path; int /*<<< orphan*/  error_template; int /*<<< orphan*/  listener; } ;
struct lwan {int /*<<< orphan*/  conns; int /*<<< orphan*/  url_map_trie; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct lwan*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct lwan *l)
{
    FUNC7("Shutting down");

    FUNC0(l->config.listener);
    FUNC0(l->config.error_template);
    FUNC0(l->config.config_file_path);

    FUNC3();
    FUNC10(l);

    FUNC6("Shutting down URL handlers");
    FUNC11(&l->url_map_trie);

    FUNC0(l->conns);

    FUNC5(l);
    FUNC9();
    FUNC8(l);
    FUNC2();
    FUNC4();
    FUNC1(l);
}