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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int MAX_SMLEN ; 
 int SMIME_ASCIICRLF ; 
 int SMIME_BINARY ; 
 int SMIME_TEXT ; 
 char FUNC10 (char*,int*,int) ; 

int FUNC11(BIO *in, BIO *out, int flags)
{
    BIO *bf;
    char eol;
    int len;
    char linebuf[MAX_SMLEN];
    /*
     * Buffer output so we don't write one line at a time. This is useful
     * when streaming as we don't end up with one OCTET STRING per line.
     */
    bf = FUNC4(FUNC0());
    if (bf == NULL)
        return 0;
    out = FUNC7(bf, out);
    if (flags & SMIME_BINARY) {
        while ((len = FUNC8(in, linebuf, MAX_SMLEN)) > 0)
            FUNC9(out, linebuf, len);
    } else {
        int eolcnt = 0;
        if (flags & SMIME_TEXT)
            FUNC6(out, "Content-Type: text/plain\r\n\r\n");
        while ((len = FUNC3(in, linebuf, MAX_SMLEN)) > 0) {
            eol = FUNC10(linebuf, &len, flags);
            if (len) {
                /* Not EOF: write out all CRLF */
                if (flags & SMIME_ASCIICRLF) {
                    int i;
                    for (i = 0; i < eolcnt; i++)
                        FUNC9(out, "\r\n", 2);
                    eolcnt = 0;
                }
                FUNC9(out, linebuf, len);
                if (eol)
                    FUNC9(out, "\r\n", 2);
            } else if (flags & SMIME_ASCIICRLF)
                eolcnt++;
            else if (eol)
                FUNC9(out, "\r\n", 2);
        }
    }
    (void)FUNC1(out);
    FUNC5(out);
    FUNC2(bf);
    return 1;
}