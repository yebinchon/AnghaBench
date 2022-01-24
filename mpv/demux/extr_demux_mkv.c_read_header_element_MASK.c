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
typedef  int uint32_t ;
struct demuxer {int /*<<< orphan*/  stream; int /*<<< orphan*/  log; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int EBML_ID_INVALID ; 
#define  MATROSKA_ID_ATTACHMENTS 134 
#define  MATROSKA_ID_CHAPTERS 133 
#define  MATROSKA_ID_CUES 132 
#define  MATROSKA_ID_INFO 131 
#define  MATROSKA_ID_SEEKHEAD 130 
#define  MATROSKA_ID_TAGS 129 
#define  MATROSKA_ID_TRACKS 128 
 int FUNC0 (struct demuxer*) ; 
 int FUNC1 (struct demuxer*) ; 
 int FUNC2 (struct demuxer*) ; 
 int FUNC3 (struct demuxer*) ; 
 int FUNC4 (struct demuxer*) ; 
 int FUNC5 (struct demuxer*) ; 
 int FUNC6 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct demuxer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct demuxer *demuxer, uint32_t id,
                               int64_t start_filepos)
{
    if (id == EBML_ID_INVALID)
        return 0;

    if (FUNC8(demuxer, id, start_filepos))
        goto skip;

    switch(id) {
    case MATROSKA_ID_INFO:
        return FUNC3(demuxer);
    case MATROSKA_ID_TRACKS:
        return FUNC6(demuxer);
    case MATROSKA_ID_CUES:
        return FUNC2(demuxer);
    case MATROSKA_ID_TAGS:
        return FUNC5(demuxer);
    case MATROSKA_ID_SEEKHEAD:
        return FUNC4(demuxer);
    case MATROSKA_ID_CHAPTERS:
        return FUNC1(demuxer);
    case MATROSKA_ID_ATTACHMENTS:
        return FUNC0(demuxer);
    }
skip:
    FUNC7(demuxer->log, -1, demuxer->stream);
    return 0;
}