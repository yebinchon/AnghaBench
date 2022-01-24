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
struct buffer {int pos; char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sd*,struct buffer*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,char**,struct buffer*) ; 

__attribute__((used)) static void FUNC2(struct sd *sd, int start_pos, struct buffer *buf)
{
    int old_pos = buf->pos;
    if (start_pos < 0 || start_pos >= old_pos)
        return; 
    FUNC0(sd, buf, '\0');  // \0 terminate for reading

    // move past leading ass tags
    while (buf->string[start_pos] == '{') {
        while (buf->string[start_pos] && buf->string[start_pos] != '}') {
            start_pos++;
        }
        if (buf->string[start_pos])
            start_pos++; // skip past '}'
    }

    // if there is not a leading '-' no removing will be done
    if (buf->string[start_pos] != '-') {
        buf->pos = old_pos;
        return;
    }

    char *rp = &buf->string[start_pos];  // read from here
    buf->pos = start_pos; // start writing here
    rp++; // skip '-'
    FUNC1(sd, &rp, buf);
    while (rp[0] == ' ') {
        rp++; // skip ' '
        FUNC1(sd, &rp, buf);
    }
    while (*rp) {
        // copy the rest
        FUNC0(sd, buf, rp[0]);
        rp++;
    }
}