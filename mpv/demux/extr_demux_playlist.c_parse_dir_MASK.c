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
struct stat {int dummy; } ;
struct pl_parser {int add_base; int /*<<< orphan*/  pl; TYPE_1__* real_stream; scalar_t__ probing; } ;
typedef  int /*<<< orphan*/  files ;
struct TYPE_2__ {int /*<<< orphan*/  url; int /*<<< orphan*/  is_directory; } ;

/* Variables and functions */
 int MAX_DIR_STACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_filename ; 
 char* FUNC1 (struct pl_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pl_parser*,char*,struct stat*,int /*<<< orphan*/ ,char***,int*) ; 

__attribute__((used)) static int FUNC5(struct pl_parser *p)
{
    if (!p->real_stream->is_directory)
        return -1;
    if (p->probing)
        return 0;

    char *path = FUNC1(p, FUNC0(p->real_stream->url));
    if (!path)
        return -1;

    char **files = NULL;
    int num_files = 0;
    struct stat dir_stack[MAX_DIR_STACK];

    FUNC4(p, path, dir_stack, 0, &files, &num_files);

    if (files)
        FUNC3(files, num_files, sizeof(files[0]), cmp_filename);

    for (int n = 0; n < num_files; n++)
        FUNC2(p->pl, files[n]);

    p->add_base = false;

    return num_files > 0 ? 0 : -1;
}