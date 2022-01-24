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
struct ssl_conf_name_st {size_t cmd_count; struct ssl_conf_name_st* cmds; struct ssl_conf_name_st* arg; struct ssl_conf_name_st* cmd; struct ssl_conf_name_st* name; } ;
typedef  int /*<<< orphan*/  CONF_IMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssl_conf_name_st*) ; 
 struct ssl_conf_name_st* ssl_names ; 
 size_t ssl_names_count ; 

__attribute__((used)) static void FUNC1(CONF_IMODULE *md)
{
    size_t i, j;
    if (ssl_names == NULL)
        return;
    for (i = 0; i < ssl_names_count; i++) {
        struct ssl_conf_name_st *tname = ssl_names + i;

        FUNC0(tname->name);
        for (j = 0; j < tname->cmd_count; j++) {
            FUNC0(tname->cmds[j].cmd);
            FUNC0(tname->cmds[j].arg);
        }
        FUNC0(tname->cmds);
    }
    FUNC0(ssl_names);
    ssl_names = NULL;
    ssl_names_count = 0;
}