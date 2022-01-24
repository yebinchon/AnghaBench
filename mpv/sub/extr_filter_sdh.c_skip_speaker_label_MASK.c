#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sd {TYPE_1__* opts; } ;
struct buffer {int pos; } ;
struct TYPE_2__ {int sub_filter_SDH_harder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sd*,struct buffer*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,char**,struct buffer*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 

__attribute__((used)) static void FUNC5(struct sd *sd, char **rpp, struct buffer *buf)
{
    int filter_harder = sd->opts->sub_filter_SDH_harder;
    char *rp = *rpp;
    int old_pos = buf->pos;

    FUNC1(sd, &rp, buf);
    // copy any leading "- "
    if (rp[0] == '-') {
        FUNC0(sd, buf, rp[0]);
        rp++;
    }
    FUNC1(sd, &rp, buf);
    while (rp[0] == ' ') {
        FUNC0(sd, buf, rp[0]);
        rp++;
        FUNC1(sd, &rp, buf);
    }
    // skip past valid data searching for :
    while (*rp && rp[0] != ':') {
        if (rp[0] == '{') {
            FUNC1(sd, &rp, buf);
        } else if ((FUNC2(rp[0]) &&
                    (filter_harder || FUNC4(rp[0]) || rp[0] == 'l')) ||
                   FUNC3(rp[0]) ||
                   rp[0] == ' ' || rp[0] == '\'' ||
                   (filter_harder && (rp[0] == '(' || rp[0] == ')')) ||
                   rp[0] == '#' || rp[0] == '.' || rp[0] == ',') {
            rp++;
        } else {
            buf->pos = old_pos;
            return;
         }
    }
    if (!*rp) {
        // : was not found
        buf->pos = old_pos;
        return;
    }
    rp++; // skip :
    FUNC1(sd, &rp, buf);
    if (!*rp) {
        // end of data
    } else if (rp[0] == '\\' && rp[1] == 'N') {
        // line end follows - skip it as line is empty
        rp += 2;
    } else if (rp[0] == ' ') {
        while (rp[0] == ' ') {
            rp++;
        }
        if (rp[0] == '\\' && rp[1] == 'N') {
            // line end follows - skip it as line is empty
            rp += 2;
        }
    } else {
        // non space follows - no speaker label
        buf->pos = old_pos;
        return;
    }
    *rpp = rp;

    return;
}