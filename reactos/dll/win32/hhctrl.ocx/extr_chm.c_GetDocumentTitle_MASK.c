#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_11__ {int len; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ strbuf_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {int /*<<< orphan*/ * pStorage; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ CHMInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STGM_READ ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

WCHAR *FUNC18(CHMInfo *info, LPCWSTR document)
{
    strbuf_t node, node_name, content;
    WCHAR *document_title = NULL;
    IStream *str = NULL;
    IStorage *storage;
    stream_t stream;
    HRESULT hres;

    FUNC6("%s\n", FUNC9(document));

    storage = info->pStorage;
    if(!storage) {
        FUNC7("Could not open storage to obtain the title for a document.\n");
        return NULL;
    }
    FUNC2(storage);

    hres = FUNC3(storage, document, NULL, STGM_READ, 0, &str);
    FUNC4(storage);
    if(FUNC0(hres))
        FUNC7("Could not open stream: %08x\n", hres);

    FUNC17(&stream, str);
    FUNC14(&node);
    FUNC14(&content);
    FUNC14(&node_name);

    while(FUNC12(&stream, &node)) {
        FUNC10(&node, &node_name);

        FUNC6("%s\n", node.buf);

        if(!FUNC8(node_name.buf, "title", -1)) {
            if(FUNC11(&stream, &content) && content.len > 1)
            {
                document_title = FUNC16(&content.buf[1], content.len-1);
                FUNC1("magic: %s\n", FUNC9(document_title));
                break;
            }
        }

        FUNC15(&node);
    }

    FUNC13(&node);
    FUNC13(&content);
    FUNC13(&node_name);
    FUNC5(str);

    return document_title;
}