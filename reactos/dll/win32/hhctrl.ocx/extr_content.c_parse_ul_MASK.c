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
typedef  int /*<<< orphan*/  insert_type_t ;
typedef  int /*<<< orphan*/  HHInfo ;
typedef  int /*<<< orphan*/  ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT_CHILD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static ContentItem *FUNC11(HHInfo *info, stream_t *stream, ContentItem *hhc_root)
{
    strbuf_t node, node_name;
    ContentItem *ret = NULL, *prev = NULL, *new_item = NULL;
    insert_type_t it;

    FUNC9(&node);
    FUNC9(&node_name);

    while(FUNC6(stream, &node)) {
        FUNC3(&node, &node_name);

        FUNC0("%s\n", node.buf);

        if(!FUNC1(node_name.buf, "object", -1)) {
            const char *ptr;
            int len;

            static const char sz_text_sitemap[] = "text/sitemap";

            ptr = FUNC2(node.buf, "type", &len);

            if(ptr && len == sizeof(sz_text_sitemap)-1
               && !FUNC5(ptr, sz_text_sitemap, len)) {
                new_item = FUNC7(info, stream, hhc_root, &it);
                prev = FUNC4(prev, new_item, it);
                if(!ret)
                    ret = prev;
            }
        }else if(!FUNC1(node_name.buf, "ul", -1)) {
            new_item = FUNC11(info, stream, hhc_root);
            FUNC4(prev, new_item, INSERT_CHILD);
        }else if(!FUNC1(node_name.buf, "/ul", -1)) {
            break;
        }

        FUNC10(&node);
    }

    FUNC8(&node);
    FUNC8(&node_name);

    return ret;
}