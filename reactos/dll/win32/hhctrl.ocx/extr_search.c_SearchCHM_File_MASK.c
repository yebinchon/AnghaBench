#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_9__ {int len; char* buf; } ;
typedef  TYPE_1__ strbuf_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  STGM_READ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 
 char FUNC19 (char) ; 

__attribute__((used)) static WCHAR *FUNC20(IStorage *pStorage, const WCHAR *file, const char *needle)
{
    char *buffer = FUNC8(BLOCK_SIZE);
    strbuf_t content, node, node_name;
    IStream *temp_stream = NULL;
    DWORD i, buffer_size = 0;
    WCHAR *title = NULL;
    BOOL found = FALSE;
    stream_t stream;
    HRESULT hres;

    hres = FUNC2(pStorage, file, NULL, STGM_READ, 0, &temp_stream);
    if(FUNC0(hres)) {
        FUNC1("Could not open '%s' stream: %08x\n", FUNC6(file), hres);
        goto cleanup;
    }

    FUNC15(&node);
    FUNC15(&content);
    FUNC15(&node_name);

    FUNC17(&stream, temp_stream);

    /* Remove all HTML formatting and record the title */
    while(FUNC13(&stream, &node)) {
        FUNC7(&node, &node_name);

        if(FUNC12(&stream, &content) && content.len > 1)
        {
            char *text = &content.buf[1];
            int textlen = content.len-1;

            if(!FUNC5(node_name.buf, "title", -1))
            {
                int wlen = FUNC4(CP_ACP, 0, text, textlen, NULL, 0);
                title = FUNC8((wlen+1)*sizeof(WCHAR));
                FUNC4(CP_ACP, 0, text, textlen, title, wlen);
                title[wlen] = 0;
            }

            buffer = FUNC10(buffer, buffer_size + textlen + 1);
            FUNC11(&buffer[buffer_size], text, textlen);
            buffer[buffer_size + textlen] = '\0';
            buffer_size += textlen;
        }

        FUNC16(&node);
        FUNC16(&content);
    }

    /* Convert the buffer to lower case for comparison against the
     * requested text (already in lower case).
     */
    for(i=0;i<buffer_size;i++)
        buffer[i] = FUNC19(buffer[i]);

    /* Search the decoded buffer for the requested text */
    if(FUNC18(buffer, needle))
        found = TRUE;

    FUNC14(&node);
    FUNC14(&content);
    FUNC14(&node_name);

cleanup:
    FUNC9(buffer);
    if(temp_stream)
        FUNC3(temp_stream);
    if(!found)
    {
        FUNC9(title);
        return NULL;
    }
    return title;
}