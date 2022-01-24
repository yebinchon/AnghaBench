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
struct timeline {TYPE_1__* demuxer; } ;
struct dirent {char* d_name; } ;
struct bstr {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {char* filename; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeline*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeline*,char*,...) ; 
 struct bstr FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct bstr,struct bstr) ; 
 struct bstr FUNC4 (struct bstr) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct bstr) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 struct bstr FUNC8 (char*) ; 
 char* FUNC9 (void*,struct bstr,struct bstr) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct timeline*,char*) ; 

__attribute__((used)) static bool FUNC15(struct timeline *tl, char *filename)
{
    void *ctx = FUNC13(NULL);
    bool res = false;

    struct bstr dirname = FUNC8(tl->demuxer->filename);

    struct bstr base_filename = FUNC2(FUNC7(filename));
    if (!base_filename.len) {
        FUNC1(tl, "CUE: Invalid audio filename in .cue file!\n");
    } else {
        char *fullname = FUNC9(ctx, dirname, base_filename);
        if (FUNC14(tl, fullname)) {
            res = true;
            goto out;
        }
    }

    // Try an audio file with the same name as the .cue file (but different
    // extension).
    // Rationale: this situation happens easily if the audio file or both files
    // are renamed.

    struct bstr cuefile =
        FUNC4(FUNC2(FUNC7(tl->demuxer->filename)));

    DIR *d = FUNC10(FUNC5(ctx, dirname));
    if (!d)
        goto out;
    struct dirent *de;
    while ((de = FUNC11(d))) {
        char *dename0 = de->d_name;
        struct bstr dename = FUNC2(dename0);
        if (FUNC3(dename, cuefile)) {
            FUNC1(tl, "CUE: No useful audio filename "
                    "in .cue file found, trying with '%s' instead!\n",
                    dename0);
            if (FUNC14(tl, FUNC9(ctx, dirname, dename))) {
                res = true;
                break;
            }
        }
    }
    FUNC6(d);

out:
    FUNC12(ctx);
    if (!res)
        FUNC0(tl, "CUE: Could not open audio file!\n");
    return res;
}