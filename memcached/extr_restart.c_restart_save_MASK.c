#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* tag; scalar_t__ (* scb ) (char*,TYPE_2__*,int /*<<< orphan*/ ) ;struct TYPE_5__* next; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ restart_data_cb ;
struct TYPE_6__ {int /*<<< orphan*/ * f; } ;
typedef  TYPE_2__ restart_cb_ctx ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int S_IRUSR ; 
 int S_IWUSR ; 
 char* FUNC0 (int,size_t) ; 
 TYPE_1__* cb_stack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(const char *file) {
    // metadata is kept in a separate file.
    // FIXME: function.
    size_t flen = FUNC7(file);
    const char *ext = ".meta";
    char *metafile = FUNC0(1, flen + FUNC7(ext) + 1);
    FUNC5(metafile, file, flen);
    FUNC5(metafile+flen, ext, FUNC7(ext));

    // restrictive permissions for the metadata file.
    // TODO: also for the mmap file eh? :P
    mode_t oldmask = FUNC9(~(S_IRUSR | S_IWUSR));
    FILE *f = FUNC2(metafile, "w");
    FUNC9(oldmask);
    if (f == NULL) {
        // FIXME: correct error handling.
        FUNC6("failed to write metadata file");
        return -1;
    }

    restart_data_cb *cb = cb_stack;
    restart_cb_ctx ctx;
    ctx.f = f;
    while (cb != NULL) {
        // Plugins/engines in the metadata file are separated by tag lines.
        FUNC3(f, "T%s\n", cb->tag);
        if (cb->scb(cb->tag, &ctx, cb->data) != 0) {
            return -1;
        }

        cb = cb->next;
    }

    FUNC1(f);
    FUNC4(metafile);

    return 0;
}