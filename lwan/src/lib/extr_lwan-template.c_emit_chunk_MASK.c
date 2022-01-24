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
struct parser {int /*<<< orphan*/  chunks; } ;
struct chunk {int action; int flags; void* data; } ;
typedef  enum flags { ____Placeholder_flags } flags ;
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
 struct chunk* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct parser *parser,
                       enum action action,
                       enum flags flags,
                       void *data)
{
    struct chunk *chunk;

    chunk = FUNC0(&parser->chunks);
    if (!chunk)
        FUNC1("Could not emit template chunk");

    chunk->action = action;
    chunk->flags = flags;
    chunk->data = data;
}