#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sz_text_sitemap ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ strbuf_t ;
typedef  int /*<<< orphan*/  IndexItem ;
typedef  int /*<<< orphan*/  HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static IndexItem *FUNC12(HHInfo *info, stream_t *stream)
{
    strbuf_t node, node_name;
    IndexItem *ret = NULL;

    FUNC10(&node);
    FUNC10(&node_name);

    while(FUNC7(stream, &node)) {
        FUNC5(&node, &node_name);

        FUNC1("%s\n", node.buf);

        if(!FUNC3(node_name.buf, "object", -1)) {
            const char *ptr;
            int len;

            static const char sz_text_sitemap[] = "text/sitemap";

            ptr = FUNC4(node.buf, "type", &len);

            if(ptr && len == sizeof(sz_text_sitemap)-1
               && !FUNC6(ptr, sz_text_sitemap, len)) {
                ret = FUNC8(info, stream);
                break;
            }
        }else {
            FUNC2("Unhandled tag! %s\n", node_name.buf);
        }

        FUNC11(&node);
    }
    if(!ret)
        FUNC0("Failed to parse <li> tag!\n");

    FUNC9(&node);
    FUNC9(&node_name);

    return ret;
}