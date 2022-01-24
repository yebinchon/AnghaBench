#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct demuxer {int /*<<< orphan*/  global; int /*<<< orphan*/  log; TYPE_2__* priv; } ;
struct TYPE_10__ {int own_stream; int /*<<< orphan*/  stream; TYPE_1__* opts; } ;
typedef  TYPE_2__ lavf_priv_t ;
struct TYPE_11__ {scalar_t__ start; int /*<<< orphan*/  len; } ;
typedef  TYPE_3__ bstr ;
struct TYPE_9__ {char* sub_cp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_ICONV_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct demuxer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct demuxer*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 TYPE_3__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct demuxer *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;
    char *cp = priv->opts->sub_cp;
    if (!cp || FUNC4(cp))
        return;
    bstr data = FUNC7(priv->stream, NULL, 128 * 1024 * 1024);
    if (!data.start) {
        FUNC1(demuxer, "File too big (or error reading) - skip charset probing.\n");
        return;
    }
    void *alloc = data.start;
    cp = (char *)FUNC2(priv, demuxer->log, data, cp, 0);
    if (cp && !FUNC4(cp))
        FUNC0(demuxer, "Using subtitle charset: %s\n", cp);
    // libavformat transparently converts UTF-16 to UTF-8
    if (!FUNC3(cp) && !FUNC4(cp)) {
        bstr conv = FUNC5(demuxer->log, data, cp, MP_ICONV_VERBOSE);
        if (conv.start && conv.start != data.start)
            FUNC9(alloc, conv.start);
        if (conv.start)
            data = conv;
    }
    if (data.start) {
        priv->stream = FUNC6(demuxer->global, data.start, data.len);
        priv->own_stream = true;
    }
    FUNC8(alloc);
}