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
struct chunk_entry {scalar_t__ id; scalar_t__ type; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ FOURCC_LIST ; 
 scalar_t__ FOURCC_RIFF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 char const* FUNC1 (char*,int /*<<< orphan*/ ,...) ; 

const char *FUNC2(const struct chunk_entry *chunk)
{
    const char *type = "";

    if (!chunk)
        return "(null)";
    if (chunk->id == FOURCC_RIFF || chunk->id == FOURCC_LIST)
        type = FUNC1("type %s, ", FUNC0(chunk->type));
    return FUNC1("%s chunk, %ssize %u", FUNC0(chunk->id), type, chunk->size);
}