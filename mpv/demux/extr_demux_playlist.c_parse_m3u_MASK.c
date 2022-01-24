#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int /*<<< orphan*/  title; } ;
struct pl_parser {scalar_t__ check_level; char* format; int /*<<< orphan*/  pl; scalar_t__ probing; TYPE_2__* real_stream; } ;
typedef  int /*<<< orphan*/  probe ;
struct TYPE_12__ {char* member_0; int member_1; int len; } ;
typedef  TYPE_1__ bstr ;
struct TYPE_13__ {int /*<<< orphan*/  url; } ;

/* Variables and functions */
 scalar_t__ DEMUX_CHECK_UNSAFE ; 
 int PROBE_SIZE ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__,char*) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,TYPE_1__) ; 
 scalar_t__ FUNC6 (TYPE_1__) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pl_parser*) ; 
 int /*<<< orphan*/  FUNC9 (struct pl_parser*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct playlist_entry*) ; 
 struct playlist_entry* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int FUNC13 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct playlist_entry*,char*) ; 

__attribute__((used)) static int FUNC16(struct pl_parser *p)
{
    bstr line = FUNC4(FUNC9(p));
    if (p->probing && !FUNC1(line, "#EXTM3U")) {
        // Last resort: if the file extension is m3u, it might be headerless.
        if (p->check_level == DEMUX_CHECK_UNSAFE) {
            char *ext = FUNC7(p->real_stream->url, NULL);
            char probe[PROBE_SIZE];
            int len = FUNC13(p->real_stream, probe, sizeof(probe));
            bstr data = {probe, len};
            if (ext && data.len > 10 && FUNC6(data)) {
                const char *exts[] = {"m3u", "m3u8", NULL};
                for (int n = 0; exts[n]; n++) {
                    if (FUNC12(ext, exts[n]) == 0)
                        goto ok;
                }
            }
        }
        return -1;
    }

ok:
    if (p->probing)
        return 0;

    char *title = NULL;
    while (line.len || !FUNC8(p)) {
        if (FUNC0(&line, "#EXTINF:")) {
            bstr duration, btitle;
            if (FUNC2(line, ",", &duration, &btitle) && btitle.len) {
                FUNC14(title);
                title = FUNC5(NULL, btitle);
            }
        } else if (FUNC3(line, "#EXT-X-")) {
            p->format = "hls";
        } else if (line.len > 0 && !FUNC3(line, "#")) {
            char *fn = FUNC5(NULL, line);
            struct playlist_entry *e = FUNC11(fn);
            FUNC14(fn);
            e->title = FUNC15(e, title);
            title = NULL;
            FUNC10(p->pl, e);
        }
        line = FUNC4(FUNC9(p));
    }
    FUNC14(title);
    return 0;
}