#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct demuxer {TYPE_1__* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ lavf_priv_t ;
typedef  int /*<<< orphan*/  bstr ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demuxer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (void*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct demuxer *demuxer, AVDictionary **d)
{
    lavf_priv_t *priv = demuxer->priv;
    if (!FUNC5(priv, "vobsub"))
        return;

    void *tmp = FUNC10(NULL);
    bstr bfilename = FUNC3(priv->filename);
    char *subname = NULL;
    if (FUNC6(bfilename)) {
        // It might be a http URL, which has additional parameters after the
        // end of the actual file path.
        bstr start, end;
        if (FUNC4(bfilename, "?", &start, &end)) {
            subname = FUNC7(tmp, start);
            if (subname)
                subname = FUNC8(tmp, "%s?%.*s", subname, FUNC0(end));
        }
    }
    if (!subname)
        subname = FUNC7(tmp, bfilename);
    if (!subname)
        subname = FUNC8(tmp, "%.*s.sub", FUNC0(bfilename));

    FUNC1(demuxer, "Assuming associated .sub file: %s\n", subname);
    FUNC2(d, "sub_name", subname, 0);
    FUNC9(tmp);
}