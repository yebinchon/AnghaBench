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
typedef  scalar_t__ time_t ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; scalar_t__ tm_year; } ;
typedef  int calculated_number ;
struct TYPE_8__ {TYPE_2__* dimensions; } ;
struct TYPE_7__ {char* name; struct TYPE_7__* next; } ;
struct TYPE_6__ {long d; int* od; int* v; int* o; int min; int max; TYPE_3__* st; scalar_t__* t; } ;
typedef  int RRDR_VALUE_FLAGS ;
typedef  int RRDR_OPTIONS ;
typedef  TYPE_1__ RRDR ;
typedef  TYPE_2__ RRDDIM ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int JSON_DATES_JS ; 
 int JSON_DATES_TIMESTAMP ; 
 int RRDR_DIMENSION_HIDDEN ; 
 int RRDR_DIMENSION_NONZERO ; 
 int RRDR_DIMENSION_SELECTED ; 
 int RRDR_OPTION_ABSOLUTE ; 
 int RRDR_OPTION_GOOGLE_JSON ; 
 int RRDR_OPTION_MILLISECONDS ; 
 int RRDR_OPTION_NONZERO ; 
 int RRDR_OPTION_NULL2ZERO ; 
 int RRDR_OPTION_OBJECTSROWS ; 
 int RRDR_OPTION_PERCENTAGE ; 
 int RRDR_OPTION_REVERSED ; 
 int RRDR_VALUE_EMPTY ; 
 int RRDR_VALUE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct tm* FUNC6 (scalar_t__*,struct tm*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(RRDR *r, BUFFER *wb, RRDR_OPTIONS options, int datatable) {
    FUNC8(r->st);

    //info("RRD2JSON(): %s: BEGIN", r->st->id);
    int row_annotations = 0, dates, dates_with_new = 0;
    char kq[2] = "",                    // key quote
            sq[2] = "",                     // string quote
            pre_label[101] = "",            // before each label
            post_label[101] = "",           // after each label
            pre_date[101] = "",             // the beginning of line, to the date
            post_date[101] = "",            // closing the date
            pre_value[101] = "",            // before each value
            post_value[101] = "",           // after each value
            post_line[101] = "",            // at the end of each row
            normal_annotation[201] = "",    // default row annotation
            overflow_annotation[201] = "",  // overflow row annotation
            data_begin[101] = "",           // between labels and values
            finish[101] = "";               // at the end of everything

    if(datatable) {
        dates = JSON_DATES_JS;
        if( options & RRDR_OPTION_GOOGLE_JSON ) {
            kq[0] = '\0';
            sq[0] = '\'';
        }
        else {
            kq[0] = '"';
            sq[0] = '"';
        }
        row_annotations = 1;
        FUNC9(pre_date,   100, "        {%sc%s:[{%sv%s:%s", kq, kq, kq, kq, sq);
        FUNC9(post_date,  100, "%s}", sq);
        FUNC9(pre_label,  100, ",\n     {%sid%s:%s%s,%slabel%s:%s", kq, kq, sq, sq, kq, kq, sq);
        FUNC9(post_label, 100, "%s,%spattern%s:%s%s,%stype%s:%snumber%s}", sq, kq, kq, sq, sq, kq, kq, sq, sq);
        FUNC9(pre_value,  100, ",{%sv%s:", kq, kq);
        FUNC10(post_value,         "}");
        FUNC10(post_line,          "]}");
        FUNC9(data_begin, 100, "\n  ],\n    %srows%s:\n [\n", kq, kq);
        FUNC10(finish,             "\n  ]\n}");

        FUNC9(overflow_annotation, 200, ",{%sv%s:%sRESET OR OVERFLOW%s},{%sv%s:%sThe counters have been wrapped.%s}", kq, kq, sq, sq, kq, kq, sq, sq);
        FUNC9(normal_annotation,   200, ",{%sv%s:null},{%sv%s:null}", kq, kq, kq, kq);

        FUNC2(wb, "{\n %scols%s:\n [\n", kq, kq);
        FUNC2(wb, "        {%sid%s:%s%s,%slabel%s:%stime%s,%spattern%s:%s%s,%stype%s:%sdatetime%s},\n", kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, sq, sq);
        FUNC2(wb, "        {%sid%s:%s%s,%slabel%s:%s%s,%spattern%s:%s%s,%stype%s:%sstring%s,%sp%s:{%srole%s:%sannotation%s}},\n", kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, kq, kq, sq, sq);
        FUNC2(wb, "        {%sid%s:%s%s,%slabel%s:%s%s,%spattern%s:%s%s,%stype%s:%sstring%s,%sp%s:{%srole%s:%sannotationText%s}}", kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, sq, sq, kq, kq, kq, kq, sq, sq);

        // remove the valueobjects flag
        // google wants its own keys
        if(options & RRDR_OPTION_OBJECTSROWS)
            options &= ~RRDR_OPTION_OBJECTSROWS;
    }
    else {
        kq[0] = '"';
        sq[0] = '"';
        if(options & RRDR_OPTION_GOOGLE_JSON) {
            dates = JSON_DATES_JS;
            dates_with_new = 1;
        }
        else {
            dates = JSON_DATES_TIMESTAMP;
            dates_with_new = 0;
        }
        if( options & RRDR_OPTION_OBJECTSROWS )
            FUNC10(pre_date, "      { ");
        else
            FUNC10(pre_date, "      [ ");
        FUNC10(pre_label,  ", \"");
        FUNC10(post_label, "\"");
        FUNC10(pre_value,  ", ");
        if( options & RRDR_OPTION_OBJECTSROWS )
            FUNC10(post_line, "}");
        else
            FUNC10(post_line, "]");
        FUNC9(data_begin, 100, "],\n    %sdata%s:\n [\n", kq, kq);
        FUNC10(finish,             "\n  ]\n}");

        FUNC2(wb, "{\n %slabels%s: [", kq, kq);
        FUNC2(wb, "%stime%s", sq, sq);
    }

    // -------------------------------------------------------------------------
    // print the JSON header

    long c, i;
    RRDDIM *rd;

    // print the header lines
    for(c = 0, i = 0, rd = r->st->dimensions; rd && c < r->d ;c++, rd = rd->next) {
        if(FUNC11(r->od[c] & RRDR_DIMENSION_HIDDEN)) continue;
        if(FUNC11((options & RRDR_OPTION_NONZERO) && !(r->od[c] & RRDR_DIMENSION_NONZERO))) continue;

        FUNC3(wb, pre_label);
        FUNC3(wb, rd->name);
        FUNC3(wb, post_label);
        i++;
    }
    if(!i) {
        FUNC3(wb, pre_label);
        FUNC3(wb, "no data");
        FUNC3(wb, post_label);
    }

    // print the begin of row data
    FUNC3(wb, data_begin);

    // if all dimensions are hidden, print a null
    if(!i) {
        FUNC3(wb, finish);
        return;
    }

    long start = 0, end = FUNC7(r), step = 1;
    if(!(options & RRDR_OPTION_REVERSED)) {
        start = FUNC7(r) - 1;
        end = -1;
        step = -1;
    }

    // for each line in the array
    calculated_number total = 1;
    for(i = start; i != end ;i += step) {
        calculated_number *cn = &r->v[ i * r->d ];
        RRDR_VALUE_FLAGS *co = &r->o[ i * r->d ];

        time_t now = r->t[i];

        if(dates == JSON_DATES_JS) {
            // generate the local date time
            struct tm tmbuf, *tm = FUNC6(&now, &tmbuf);
            if(!tm) { FUNC4("localtime_r() failed."); continue; }

            if(FUNC5(i != start)) FUNC3(wb, ",\n");
            FUNC3(wb, pre_date);

            if( options & RRDR_OPTION_OBJECTSROWS )
                FUNC2(wb, "%stime%s: ", kq, kq);

            if(dates_with_new)
                FUNC3(wb, "new ");

            FUNC0(wb, tm->tm_year + 1900, tm->tm_mon, tm->tm_mday, tm->tm_hour, tm->tm_min, tm->tm_sec);

            FUNC3(wb, post_date);

            if(row_annotations) {
                // google supports one annotation per row
                int annotation_found = 0;
                for(c = 0, rd = r->st->dimensions; rd ;c++, rd = rd->next) {
                    if(FUNC11(!(r->od[c] & RRDR_DIMENSION_SELECTED))) continue;

                    if(co[c] & RRDR_VALUE_RESET) {
                        FUNC3(wb, overflow_annotation);
                        annotation_found = 1;
                        break;
                    }
                }
                if(!annotation_found)
                    FUNC3(wb, normal_annotation);
            }
        }
        else {
            // print the timestamp of the line
            if(FUNC5(i != start)) FUNC3(wb, ",\n");
            FUNC3(wb, pre_date);

            if( options & RRDR_OPTION_OBJECTSROWS )
                FUNC2(wb, "%stime%s: ", kq, kq);

            FUNC1(wb, (calculated_number)r->t[i]);
            // in ms
            if(options & RRDR_OPTION_MILLISECONDS) FUNC3(wb, "000");

            FUNC3(wb, post_date);
        }

        int set_min_max = 0;
        if(FUNC11(options & RRDR_OPTION_PERCENTAGE)) {
            total = 0;
            for(c = 0, rd = r->st->dimensions; rd && c < r->d ;c++, rd = rd->next) {
                calculated_number n = cn[c];

                if(FUNC5((options & RRDR_OPTION_ABSOLUTE) && n < 0))
                    n = -n;

                total += n;
            }
            // prevent a division by zero
            if(total == 0) total = 1;
            set_min_max = 1;
        }

        // for each dimension
        for(c = 0, rd = r->st->dimensions; rd && c < r->d ;c++, rd = rd->next) {
            if(FUNC11(r->od[c] & RRDR_DIMENSION_HIDDEN)) continue;
            if(FUNC11((options & RRDR_OPTION_NONZERO) && !(r->od[c] & RRDR_DIMENSION_NONZERO))) continue;

            calculated_number n = cn[c];

            FUNC3(wb, pre_value);

            if( options & RRDR_OPTION_OBJECTSROWS )
                FUNC2(wb, "%s%s%s: ", kq, rd->name, kq);

            if(co[c] & RRDR_VALUE_EMPTY) {
                if(options & RRDR_OPTION_NULL2ZERO)
                    FUNC3(wb, "0");
                else
                    FUNC3(wb, "null");
            }
            else {
                if(FUNC11((options & RRDR_OPTION_ABSOLUTE) && n < 0))
                    n = -n;

                if(FUNC11(options & RRDR_OPTION_PERCENTAGE)) {
                    n = n * 100 / total;

                    if(FUNC11(set_min_max)) {
                        r->min = r->max = n;
                        set_min_max = 0;
                    }

                    if(n < r->min) r->min = n;
                    if(n > r->max) r->max = n;
                }

                FUNC1(wb, n);
            }

            FUNC3(wb, post_value);
        }

        FUNC3(wb, post_line);
    }

    FUNC3(wb, finish);
    //info("RRD2JSON(): %s: END", r->st->id);
}