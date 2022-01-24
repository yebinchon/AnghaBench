#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef  int calculated_number ;
struct TYPE_8__ {TYPE_2__* dimensions; } ;
struct TYPE_7__ {char const* name; struct TYPE_7__* next; } ;
struct TYPE_6__ {long d; int* od; int* v; int* o; int min; int max; TYPE_3__* st; scalar_t__* t; } ;
typedef  int RRDR_VALUE_FLAGS ;
typedef  int RRDR_OPTIONS ;
typedef  TYPE_1__ RRDR ;
typedef  TYPE_2__ RRDDIM ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 scalar_t__ DATASOURCE_CSV_MARKDOWN ; 
 int RRDR_DIMENSION_HIDDEN ; 
 int RRDR_DIMENSION_NONZERO ; 
 int RRDR_OPTION_ABSOLUTE ; 
 int RRDR_OPTION_LABEL_QUOTES ; 
 int RRDR_OPTION_MILLISECONDS ; 
 int RRDR_OPTION_NONZERO ; 
 int RRDR_OPTION_NULL2ZERO ; 
 int RRDR_OPTION_PERCENTAGE ; 
 int RRDR_OPTION_REVERSED ; 
 int RRDR_OPTION_SECONDS ; 
 int RRDR_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct tm* FUNC5 (scalar_t__*,struct tm*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(RRDR *r, BUFFER *wb, uint32_t format, RRDR_OPTIONS options, const char *startline, const char *separator, const char *endline, const char *betweenlines) {
    FUNC7(r->st);

    //info("RRD2CSV(): %s: BEGIN", r->st->id);
    long c, i;
    RRDDIM *d;

    // print the csv header
    for(c = 0, i = 0, d = r->st->dimensions; d && c < r->d ;c++, d = d->next) {
        if(FUNC8(r->od[c] & RRDR_DIMENSION_HIDDEN)) continue;
        if(FUNC8((options & RRDR_OPTION_NONZERO) && !(r->od[c] & RRDR_DIMENSION_NONZERO))) continue;

        if(!i) {
            FUNC2(wb, startline);
            if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
            FUNC2(wb, "time");
            if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
        }
        FUNC2(wb, separator);
        if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
        FUNC2(wb, d->name);
        if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
        i++;
    }
    FUNC2(wb, endline);

    if(format == DATASOURCE_CSV_MARKDOWN) {
        // print the --- line after header
        for(c = 0, i = 0, d = r->st->dimensions; d && c < r->d ;c++, d = d->next) {
            if(FUNC8(r->od[c] & RRDR_DIMENSION_HIDDEN)) continue;
            if(FUNC8((options & RRDR_OPTION_NONZERO) && !(r->od[c] & RRDR_DIMENSION_NONZERO))) continue;

            if(!i) {
                FUNC2(wb, startline);
                if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
                FUNC2(wb, ":---:");
                if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
            }
            FUNC2(wb, separator);
            if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
            FUNC2(wb, ":---:");
            if(options & RRDR_OPTION_LABEL_QUOTES) FUNC2(wb, "\"");
            i++;
        }
        FUNC2(wb, endline);
    }

    if(!i) {
        // no dimensions present
        return;
    }

    long start = 0, end = FUNC6(r), step = 1;
    if(!(options & RRDR_OPTION_REVERSED)) {
        start = FUNC6(r) - 1;
        end = -1;
        step = -1;
    }

    // for each line in the array
    calculated_number total = 1;
    for(i = start; i != end ;i += step) {
        calculated_number *cn = &r->v[ i * r->d ];
        RRDR_VALUE_FLAGS *co = &r->o[ i * r->d ];

        FUNC2(wb, betweenlines);
        FUNC2(wb, startline);

        time_t now = r->t[i];

        if((options & RRDR_OPTION_SECONDS) || (options & RRDR_OPTION_MILLISECONDS)) {
            // print the timestamp of the line
            FUNC1(wb, (calculated_number)now);
            // in ms
            if(options & RRDR_OPTION_MILLISECONDS) FUNC2(wb, "000");
        }
        else {
            // generate the local date time
            struct tm tmbuf, *tm = FUNC5(&now, &tmbuf);
            if(!tm) { FUNC3("localtime() failed."); continue; }
            FUNC0(wb, tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday, tm->tm_hour, tm->tm_min, tm->tm_sec);
        }

        int set_min_max = 0;
        if(FUNC8(options & RRDR_OPTION_PERCENTAGE)) {
            total = 0;
            for(c = 0, d = r->st->dimensions; d && c < r->d ;c++, d = d->next) {
                calculated_number n = cn[c];

                if(FUNC4((options & RRDR_OPTION_ABSOLUTE) && n < 0))
                    n = -n;

                total += n;
            }
            // prevent a division by zero
            if(total == 0) total = 1;
            set_min_max = 1;
        }

        // for each dimension
        for(c = 0, d = r->st->dimensions; d && c < r->d ;c++, d = d->next) {
            if(FUNC8(r->od[c] & RRDR_DIMENSION_HIDDEN)) continue;
            if(FUNC8((options & RRDR_OPTION_NONZERO) && !(r->od[c] & RRDR_DIMENSION_NONZERO))) continue;

            FUNC2(wb, separator);

            calculated_number n = cn[c];

            if(co[c] & RRDR_VALUE_EMPTY) {
                if(options & RRDR_OPTION_NULL2ZERO)
                    FUNC2(wb, "0");
                else
                    FUNC2(wb, "null");
            }
            else {
                if(FUNC8((options & RRDR_OPTION_ABSOLUTE) && n < 0))
                    n = -n;

                if(FUNC8(options & RRDR_OPTION_PERCENTAGE)) {
                    n = n * 100 / total;

                    if(FUNC8(set_min_max)) {
                        r->min = r->max = n;
                        set_min_max = 0;
                    }

                    if(n < r->min) r->min = n;
                    if(n > r->max) r->max = n;
                }

                FUNC1(wb, n);
            }
        }

        FUNC2(wb, endline);
    }
    //info("RRD2CSV(): %s: END", r->st->id);
}