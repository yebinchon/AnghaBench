#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int rrd_history_entries; int /*<<< orphan*/  rrd_memory_mode; } ;
struct TYPE_14__ {TYPE_3__* apps; } ;
struct TYPE_13__ {int rrd_history_entries; int /*<<< orphan*/ * dict; int /*<<< orphan*/  rrd_memory_mode; int /*<<< orphan*/  default_options; void* metrics; void* name; TYPE_2__* charts; void* source; struct TYPE_13__* next; } ;
struct TYPE_12__ {void* id; int /*<<< orphan*/  chart_type; void* priority; void* units; void* context; void* family; void* title; void* name; void* source; struct TYPE_12__* next; } ;
struct TYPE_11__ {char* metric; void* metric_pattern; } ;
typedef  TYPE_1__ STATSD_APP_CHART_DIM ;
typedef  TYPE_2__ STATSD_APP_CHART ;
typedef  TYPE_3__ STATSD_APP ;
typedef  int /*<<< orphan*/  RRDDIM_FLAGS ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  DICTIONARY_FLAG_SINGLE_THREADED ; 
 int /*<<< orphan*/  D_CONFIG ; 
 int /*<<< orphan*/  D_STATSD ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 void* NETDATA_CHART_PRIO_STATSD_PRIVATE ; 
 int /*<<< orphan*/  RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS ; 
 int /*<<< orphan*/  RRDDIM_FLAG_HIDDEN ; 
 int /*<<< orphan*/  RRDDIM_FLAG_NONE ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  SIMPLE_PATTERN_EXACT ; 
 int STATSD_CONF_LINE_MAX ; 
 int /*<<< orphan*/  STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED ; 
 int /*<<< orphan*/  STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED ; 
 TYPE_1__* FUNC0 (TYPE_3__*,TYPE_2__*,char*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,scalar_t__) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 TYPE_7__* localhost ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 void* FUNC19 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,char*,size_t,char const*) ; 
 TYPE_6__ statsd ; 
 int FUNC22 (char*) ; 
 char* FUNC23 (char*,char) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 void* FUNC25 (char const*) ; 
 char* FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,size_t,char const*) ; 
 scalar_t__ FUNC28 (char*) ; 
 scalar_t__ FUNC29 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC30 (char*,char*) ; 
 char* FUNC31 (char*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(const char *filename, STATSD_APP *app, STATSD_APP_CHART *chart, DICTIONARY *dict) {
    FUNC3(D_STATSD, "STATSD configuration reading file '%s'", filename);

    char *buffer = FUNC13(STATSD_CONF_LINE_MAX + 1);

    FILE *fp = FUNC11(filename, "r");
    if(!fp) {
        FUNC8("STATSD: cannot open file '%s'.", filename);
        FUNC12(buffer);
        return -1;
    }

    size_t line = 0;
    char *s;
    while(FUNC10(buffer, STATSD_CONF_LINE_MAX, fp) != NULL) {
        buffer[STATSD_CONF_LINE_MAX] = '\0';
        line++;

        s = FUNC31(buffer);
        if (!s || *s == '#') {
            FUNC3(D_STATSD, "STATSD: ignoring line %zu of file '%s', it is empty.", line, filename);
            continue;
        }

        FUNC3(D_STATSD, "STATSD: processing line %zu of file '%s': %s", line, filename, buffer);

        if(*s == 'i' && FUNC29(s, "include", 7) == 0) {
            s = FUNC31(&s[7]);
            if(s && *s) {
                char *tmp;
                if(*s == '/')
                    tmp = FUNC25(s);
                else {
                    // the file to be included is relative to current file
                    // find the directory name from the file we already read
                    char *filename2 = FUNC25(filename); // copy filename, since dirname() will change it
                    char *dir = FUNC7(filename2);      // find the directory part of the filename
                    tmp = FUNC26(dir, s);  // compose the new filename to read;
                    FUNC12(filename2);                    // free the filename we copied
                }
                FUNC33(tmp, app, chart, dict);
                FUNC12(tmp);
            }
            else
                FUNC8("STATSD: ignoring line %zu of file '%s', include filename is empty", line, filename);

            continue;
        }

        int len = (int) FUNC28(s);
        if (*s == '[' && s[len - 1] == ']') {
            // new section
            s[len - 1] = '\0';
            s++;

            if (!FUNC24(s, "app")) {
                // a new app
                app = FUNC2(sizeof(STATSD_APP), 1);
                app->name = FUNC25("unnamed");
                app->rrd_memory_mode = localhost->rrd_memory_mode;
                app->rrd_history_entries = localhost->rrd_history_entries;

                app->next = statsd.apps;
                statsd.apps = app;
                chart = NULL;
                dict = NULL;

                {
                    char lineandfile[FILENAME_MAX + 1];
                    FUNC21(lineandfile, FILENAME_MAX, "%zu@%s", line, filename);
                    app->source = FUNC25(lineandfile);
                }
            }
            else if(app) {
                if(!FUNC24(s, "dictionary")) {
                    if(!app->dict)
                        app->dict = FUNC4(DICTIONARY_FLAG_SINGLE_THREADED);

                    dict = app->dict;
                }
                else {
                    dict = NULL;

                    // a new chart
                    chart = FUNC2(sizeof(STATSD_APP_CHART), 1);
                    FUNC14(s);
                    chart->id         = FUNC25(s);
                    chart->name       = FUNC25(s);
                    chart->title      = FUNC25("Statsd chart");
                    chart->context    = FUNC25(s);
                    chart->family     = FUNC25("overview");
                    chart->units      = FUNC25("value");
                    chart->priority   = NETDATA_CHART_PRIO_STATSD_PRIVATE;
                    chart->chart_type = RRDSET_TYPE_LINE;

                    chart->next = app->charts;
                    app->charts = chart;

                    {
                        char lineandfile[FILENAME_MAX + 1];
                        FUNC21(lineandfile, FILENAME_MAX, "%zu@%s", line, filename);
                        chart->source = FUNC25(lineandfile);
                    }
                }
            }
            else
                FUNC8("STATSD: ignoring line %zu ('%s') of file '%s', [app] is not defined.", line, s, filename);

            continue;
        }

        if(!app) {
            FUNC8("STATSD: ignoring line %zu ('%s') of file '%s', it is outside all sections.", line, s, filename);
            continue;
        }

        char *name = s;
        char *value = FUNC23(s, '=');
        if(!value) {
            FUNC8("STATSD: ignoring line %zu ('%s') of file '%s', there is no = in it.", line, s, filename);
            continue;
        }
        *value = '\0';
        value++;

        name = FUNC31(name);
        value = FUNC31(value);

        if(!name || *name == '#') {
            FUNC8("STATSD: ignoring line %zu of file '%s', name is empty.", line, filename);
            continue;
        }
        if(!value) {
            FUNC3(D_CONFIG, "STATSD: ignoring line %zu of file '%s', value is empty.", line, filename);
            continue;
        }

        if(FUNC32(dict)) {
            // parse [dictionary] members

            FUNC6(dict, name, value, FUNC28(value) + 1);
        }
        else if(!chart) {
            // parse [app] members

            if(!FUNC24(name, "name")) {
                FUNC12((void *)app->name);
                FUNC15(value);
                app->name = FUNC25(value);
            }
            else if (!FUNC24(name, "metrics")) {
                FUNC20(app->metrics);
                app->metrics = FUNC19(value, NULL, SIMPLE_PATTERN_EXACT);
            }
            else if (!FUNC24(name, "private charts")) {
                if (!FUNC24(value, "yes") || !FUNC24(value, "on"))
                    app->default_options |= STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED;
                else
                    app->default_options &= ~STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED;
            }
            else if (!FUNC24(name, "gaps when not collected")) {
                if (!FUNC24(value, "yes") || !FUNC24(value, "on"))
                    app->default_options |= STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED;
            }
            else if (!FUNC24(name, "memory mode")) {
                app->rrd_memory_mode = FUNC17(value);
            }
            else if (!FUNC24(name, "history")) {
                app->rrd_history_entries = FUNC1(value);
                if (app->rrd_history_entries < 5)
                    app->rrd_history_entries = 5;
            }
            else {
                FUNC8("STATSD: ignoring line %zu ('%s') of file '%s'. Unknown keyword for the [app] section.", line, name, filename);
                continue;
            }
        }
        else {
            // parse [chart] members

            if(!FUNC24(name, "name")) {
                FUNC12((void *)chart->name);
                FUNC14(value);
                chart->name = FUNC25(value);
            }
            else if(!FUNC24(name, "title")) {
                FUNC12((void *)chart->title);
                chart->title = FUNC25(value);
            }
            else if (!FUNC24(name, "family")) {
                FUNC12((void *)chart->family);
                chart->family = FUNC25(value);
            }
            else if (!FUNC24(name, "context")) {
                FUNC12((void *)chart->context);
                FUNC14(value);
                chart->context = FUNC25(value);
            }
            else if (!FUNC24(name, "units")) {
                FUNC12((void *)chart->units);
                chart->units = FUNC25(value);
            }
            else if (!FUNC24(name, "priority")) {
                chart->priority = FUNC1(value);
            }
            else if (!FUNC24(name, "type")) {
                chart->chart_type = FUNC18(value);
            }
            else if (!FUNC24(name, "dimension")) {
                // metric [name [type [multiplier [divisor]]]]
                char *words[10];
                FUNC16(value, words, 10);

                int pattern = 0;
                size_t i = 0;
                char *metric_name   = words[i++];

                if(FUNC24(metric_name, "pattern") == 0) {
                    metric_name = words[i++];
                    pattern = 1;
                }

                char *dim_name      = words[i++];
                char *type          = words[i++];
                char *multipler     = words[i++];
                char *divisor       = words[i++];
                char *options       = words[i++];

                RRDDIM_FLAGS flags = RRDDIM_FLAG_NONE;
                if(options && *options) {
                    if(FUNC30(options, "hidden") != NULL) flags |= RRDDIM_FLAG_HIDDEN;
                    if(FUNC30(options, "noreset") != NULL) flags |= RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS;
                    if(FUNC30(options, "nooverflow") != NULL) flags |= RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS;
                }

                if(!pattern) {
                    if(app->dict) {
                        if(dim_name && *dim_name) {
                            char *n = FUNC5(app->dict, dim_name);
                            if(n) dim_name = n;
                        }
                        else {
                            dim_name = FUNC5(app->dict, metric_name);
                        }
                    }

                    if(!dim_name || !*dim_name)
                        dim_name = metric_name;
                }

                STATSD_APP_CHART_DIM *dim = FUNC0(
                        app
                        , chart
                        , metric_name
                        , dim_name
                        , (multipler && *multipler)?FUNC22(multipler):1
                        , (divisor && *divisor)?FUNC22(divisor):1
                        , flags
                        , FUNC27(type, line, filename)
                );

                if(pattern)
                    dim->metric_pattern = FUNC19(dim->metric, NULL, SIMPLE_PATTERN_EXACT);
            }
            else {
                FUNC8("STATSD: ignoring line %zu ('%s') of file '%s'. Unknown keyword for the [%s] section.", line, name, filename, chart->id);
                continue;
            }
        }
    }

    FUNC12(buffer);
    FUNC9(fp);
    return 0;
}