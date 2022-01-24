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
struct timeline {int /*<<< orphan*/  global; int /*<<< orphan*/  cancel; TYPE_1__* demuxer; } ;
struct demuxer_params {char* force_format; } ;
struct demuxer {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_2__ {char* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeline*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeline*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeline*,struct demuxer*) ; 
 struct bstr FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct bstr,struct bstr) ; 
 scalar_t__ FUNC5 (struct bstr,struct bstr) ; 
 struct demuxer* FUNC6 (char*,struct demuxer_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct timeline *tl, char *filename)
{
    struct bstr bfilename = FUNC3(filename);
    // Avoid trying to open itself or another .cue file. Best would be
    // to check the result of demuxer auto-detection, but the demuxer
    // API doesn't allow this without opening a full demuxer.
    if (FUNC4(bfilename, FUNC3(".cue"))
        || FUNC5(FUNC3(tl->demuxer->filename), bfilename) == 0)
        return false;

    struct demuxer *d = FUNC6(filename, NULL, tl->cancel, tl->global);
    // Since .bin files are raw PCM data with no headers, we have to explicitly
    // open them. Also, try to avoid to open files that are most likely not .bin
    // files, as that would only play noise. Checking the file extension is
    // fragile, but it's about the only way we have.
    // TODO: maybe also could check if the .bin file is a multiple of the Audio
    //       CD sector size (2352 bytes)
    if (!d && FUNC4(bfilename, FUNC3(".bin"))) {
        FUNC1(tl, "CUE: Opening as BIN file!\n");
        struct demuxer_params p = {.force_format = "rawaudio"};
        d = FUNC6(filename, &p, tl->cancel, tl->global);
    }
    if (d) {
        FUNC2(tl, d);
        return true;
    }
    FUNC0(tl, "Could not open source '%s'!\n", filename);
    return false;
}