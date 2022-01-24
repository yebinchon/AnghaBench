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
struct gl_shader_cache {int /*<<< orphan*/  cache_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_cache*,char const*) ; 

void FUNC2(struct gl_shader_cache *sc, const char *dir)
{
    FUNC0(sc->cache_dir);
    sc->cache_dir = FUNC1(sc, dir);
}