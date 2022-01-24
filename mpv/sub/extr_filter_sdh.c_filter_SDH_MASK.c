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
struct sd {int dummy; } ;
struct buffer {char* string; int pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sd*,char*) ; 
 char FUNC1 (struct sd*,struct buffer*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,char**,struct buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,int,struct buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct sd*,char**,struct buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct sd*,char**,struct buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct sd*,char**,struct buffer*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,char*,int) ; 

char *FUNC13(struct sd *sd, char *format, int n_ignored, char *data, int length)
{
    if (!format) {
        FUNC0(sd, "SDH filtering not possible - format missing\n");
        return length ? FUNC12(NULL, data, length) : FUNC11(NULL, data);
    }

    // need null terminated string
    char *ass = length ? FUNC12(NULL, data, length) : data;

    int comma = 0;
    // scan format line to find the number of the field where the text is
    for (char *c = format; *c; c++) {
        if (*c == ',') {
            comma++;
            if (FUNC9(c + 1, "Text", 4) == 0)
                break;
        }
    }
    // if preprocessed line some fields are skipped
    comma -= n_ignored;

    struct buffer writebuf;
    struct buffer *buf = &writebuf;

    FUNC3(buf, FUNC8(ass) + 1); // with room for terminating '\0'

    char *rp = ass;

    // locate text field in ASS line
    for (int k = 0; k < comma; k++) {
        while (*rp) {
            char tmp = FUNC1(sd, buf, rp[0]);
            rp++;
            if (tmp == ',')
                break;
        }
    }
    if (!*rp) {
        FUNC10(buf->string);
        FUNC0(sd, "SDH filtering not possible - cannot find text field\n");
        return length ? ass : FUNC11(NULL, ass);
    }

    bool contains_text = false;  // true if non SDH text was found
    bool line_with_text = false; // if last line contained text
    int wp_line_start = buf->pos; // write pos to start of last line
    int wp_line_end   = buf->pos; // write pos to end of previous line with text (\N)

    // go through the lines in the text
    // they are separated by \N
    while (*rp) {
        line_with_text = false;
        wp_line_start = buf->pos;

        // skip any speaker label
        FUNC7(sd, &rp, buf);

        // go through the rest of the line looking for SDH in () or []
        while (*rp && !(rp[0] == '\\' && rp[1] == 'N')) {
            FUNC2(sd, &rp, buf);
            if (rp[0] == '[') {
                if (!FUNC5(sd, &rp, buf)) {
                    FUNC1(sd, buf, rp[0]);
                    rp++;
                    line_with_text =  true;
                }
            } else if (rp[0] == '(') {
                if (!FUNC6(sd, &rp, buf)) {
                    FUNC1(sd, buf, rp[0]);
                    rp++;
                    line_with_text =  true;
                }
            } else if (*rp && rp[0] != '\\') {
                if ((rp[0] > 32 && rp[0] < 127 && rp[0] != '-') ||
                    (unsigned char)rp[0] >= 0xC0)
                {
                    line_with_text =  true;
                }
                FUNC1(sd, buf, rp[0]);
                rp++;
            } else if (rp[0] == '\\' && rp[1] != 'N') {
                FUNC1(sd, buf, rp[0]);
                rp++;
            }
        }
        // either end of data or ASS line end defined by separating \N
        if (*rp) {
            // ASS line end
            if (line_with_text) {
                contains_text = true;
                wp_line_end = buf->pos;
                FUNC1(sd, buf, rp[0]); // copy backslash
                FUNC1(sd, buf, rp[1]); // copy N
                rp += 2; // move read pointer past \N
            } else {
                // no text in line, remove leading hyphen and spaces
                FUNC4(sd, wp_line_start, buf);
                // and join with next line
                rp += 2; // move read pointer past \N
            }
        }
    }
    // if no normal text i last line - remove last line
    // by moving write pointer to start of last line
    if (!line_with_text) {
        buf->pos = wp_line_end;
    } else {
        contains_text = true;
    }
    if (length)
        FUNC10(ass);
    if (contains_text) {
        // the ASS data contained normal text after filtering
        FUNC1(sd, buf, '\0'); // '\0' terminate
        return buf->string;
    } else {
        // all data removed by filtering
        FUNC10(buf->string);
        return NULL;
    }
}