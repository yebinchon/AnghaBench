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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct pl_parser {TYPE_1__* s; } ;
struct dirent {char* d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  cancel; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAX_DIR_STACK ; 
 int /*<<< orphan*/  FUNC0 (struct pl_parser*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pl_parser*,char**,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pl_parser*,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct pl_parser*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct stat*,struct stat*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static bool FUNC12(struct pl_parser *p, char *path,
                     struct stat *dir_stack, int num_dir_stack,
                     char ***files, int *num_files)
{
    if (FUNC11(path) >= 8192 || num_dir_stack == MAX_DIR_STACK)
        return false; // things like mount bind loops

    DIR *dp = FUNC7(path);
    if (!dp) {
        FUNC0(p, "Could not read directory.\n");
        return false;
    }

    struct dirent *ep;
    while ((ep = FUNC8(dp))) {
        if (ep->d_name[0] == '.')
            continue;

        if (FUNC5(p->s->cancel))
            break;

        char *file = FUNC6(p, path, ep->d_name);

        struct stat st;
        if (FUNC10(file, &st) == 0 && FUNC3(st.st_mode)) {
            for (int n = 0; n < num_dir_stack; n++) {
                if (FUNC9(&dir_stack[n], &st)) {
                    FUNC2(p, "Skip recursive entry: %s\n", file);
                    goto skip;
                }
            }

            dir_stack[num_dir_stack] = st;
            FUNC12(p, file, dir_stack, num_dir_stack + 1, files, num_files);
        } else {
            FUNC1(p, *files, *num_files, file);
        }

        skip: ;
    }

    FUNC4(dp);
    return true;
}