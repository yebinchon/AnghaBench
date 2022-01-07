
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int rrd_history_entries; int rrd_memory_mode; } ;
struct TYPE_14__ {TYPE_3__* apps; } ;
struct TYPE_13__ {int rrd_history_entries; int * dict; int rrd_memory_mode; int default_options; void* metrics; void* name; TYPE_2__* charts; void* source; struct TYPE_13__* next; } ;
struct TYPE_12__ {void* id; int chart_type; void* priority; void* units; void* context; void* family; void* title; void* name; void* source; struct TYPE_12__* next; } ;
struct TYPE_11__ {char* metric; void* metric_pattern; } ;
typedef TYPE_1__ STATSD_APP_CHART_DIM ;
typedef TYPE_2__ STATSD_APP_CHART ;
typedef TYPE_3__ STATSD_APP ;
typedef int RRDDIM_FLAGS ;
typedef int FILE ;
typedef int DICTIONARY ;


 int DICTIONARY_FLAG_SINGLE_THREADED ;
 int D_CONFIG ;
 int D_STATSD ;
 int FILENAME_MAX ;
 void* NETDATA_CHART_PRIO_STATSD_PRIVATE ;
 int RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS ;
 int RRDDIM_FLAG_HIDDEN ;
 int RRDDIM_FLAG_NONE ;
 int RRDSET_TYPE_LINE ;
 int SIMPLE_PATTERN_EXACT ;
 int STATSD_CONF_LINE_MAX ;
 int STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED ;
 int STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED ;
 TYPE_1__* add_dimension_to_app_chart (TYPE_3__*,TYPE_2__*,char*,char*,int,int,int ,int ) ;
 void* atol (char*) ;
 void* callocz (int,int) ;
 int debug (int ,char*,...) ;
 int * dictionary_create (int ) ;
 char* dictionary_get (int *,char*) ;
 int dictionary_set (int *,char*,char*,scalar_t__) ;
 char* dirname (char*) ;
 int error (char*,...) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int freez (char*) ;
 TYPE_7__* localhost ;
 char* mallocz (int) ;
 int netdata_fix_chart_id (char*) ;
 int netdata_fix_chart_name (char*) ;
 int pluginsd_split_words (char*,char**,int) ;
 int rrd_memory_mode_id (char*) ;
 int rrdset_type_id (char*) ;
 void* simple_pattern_create (char*,int *,int ) ;
 int simple_pattern_free (void*) ;
 int snprintfz (char*,int ,char*,size_t,char const*) ;
 TYPE_6__ statsd ;
 int str2l (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdupz (char const*) ;
 char* strdupz_path_subpath (char*,char*) ;
 int string2valuetype (char*,size_t,char const*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * strstr (char*,char*) ;
 char* trim (char*) ;
 scalar_t__ unlikely (int *) ;

__attribute__((used)) static int statsd_readfile(const char *filename, STATSD_APP *app, STATSD_APP_CHART *chart, DICTIONARY *dict) {
    debug(D_STATSD, "STATSD configuration reading file '%s'", filename);

    char *buffer = mallocz(STATSD_CONF_LINE_MAX + 1);

    FILE *fp = fopen(filename, "r");
    if(!fp) {
        error("STATSD: cannot open file '%s'.", filename);
        freez(buffer);
        return -1;
    }

    size_t line = 0;
    char *s;
    while(fgets(buffer, STATSD_CONF_LINE_MAX, fp) != ((void*)0)) {
        buffer[STATSD_CONF_LINE_MAX] = '\0';
        line++;

        s = trim(buffer);
        if (!s || *s == '#') {
            debug(D_STATSD, "STATSD: ignoring line %zu of file '%s', it is empty.", line, filename);
            continue;
        }

        debug(D_STATSD, "STATSD: processing line %zu of file '%s': %s", line, filename, buffer);

        if(*s == 'i' && strncmp(s, "include", 7) == 0) {
            s = trim(&s[7]);
            if(s && *s) {
                char *tmp;
                if(*s == '/')
                    tmp = strdupz(s);
                else {


                    char *filename2 = strdupz(filename);
                    char *dir = dirname(filename2);
                    tmp = strdupz_path_subpath(dir, s);
                    freez(filename2);
                }
                statsd_readfile(tmp, app, chart, dict);
                freez(tmp);
            }
            else
                error("STATSD: ignoring line %zu of file '%s', include filename is empty", line, filename);

            continue;
        }

        int len = (int) strlen(s);
        if (*s == '[' && s[len - 1] == ']') {

            s[len - 1] = '\0';
            s++;

            if (!strcmp(s, "app")) {

                app = callocz(sizeof(STATSD_APP), 1);
                app->name = strdupz("unnamed");
                app->rrd_memory_mode = localhost->rrd_memory_mode;
                app->rrd_history_entries = localhost->rrd_history_entries;

                app->next = statsd.apps;
                statsd.apps = app;
                chart = ((void*)0);
                dict = ((void*)0);

                {
                    char lineandfile[FILENAME_MAX + 1];
                    snprintfz(lineandfile, FILENAME_MAX, "%zu@%s", line, filename);
                    app->source = strdupz(lineandfile);
                }
            }
            else if(app) {
                if(!strcmp(s, "dictionary")) {
                    if(!app->dict)
                        app->dict = dictionary_create(DICTIONARY_FLAG_SINGLE_THREADED);

                    dict = app->dict;
                }
                else {
                    dict = ((void*)0);


                    chart = callocz(sizeof(STATSD_APP_CHART), 1);
                    netdata_fix_chart_id(s);
                    chart->id = strdupz(s);
                    chart->name = strdupz(s);
                    chart->title = strdupz("Statsd chart");
                    chart->context = strdupz(s);
                    chart->family = strdupz("overview");
                    chart->units = strdupz("value");
                    chart->priority = NETDATA_CHART_PRIO_STATSD_PRIVATE;
                    chart->chart_type = RRDSET_TYPE_LINE;

                    chart->next = app->charts;
                    app->charts = chart;

                    {
                        char lineandfile[FILENAME_MAX + 1];
                        snprintfz(lineandfile, FILENAME_MAX, "%zu@%s", line, filename);
                        chart->source = strdupz(lineandfile);
                    }
                }
            }
            else
                error("STATSD: ignoring line %zu ('%s') of file '%s', [app] is not defined.", line, s, filename);

            continue;
        }

        if(!app) {
            error("STATSD: ignoring line %zu ('%s') of file '%s', it is outside all sections.", line, s, filename);
            continue;
        }

        char *name = s;
        char *value = strchr(s, '=');
        if(!value) {
            error("STATSD: ignoring line %zu ('%s') of file '%s', there is no = in it.", line, s, filename);
            continue;
        }
        *value = '\0';
        value++;

        name = trim(name);
        value = trim(value);

        if(!name || *name == '#') {
            error("STATSD: ignoring line %zu of file '%s', name is empty.", line, filename);
            continue;
        }
        if(!value) {
            debug(D_CONFIG, "STATSD: ignoring line %zu of file '%s', value is empty.", line, filename);
            continue;
        }

        if(unlikely(dict)) {


            dictionary_set(dict, name, value, strlen(value) + 1);
        }
        else if(!chart) {


            if(!strcmp(name, "name")) {
                freez((void *)app->name);
                netdata_fix_chart_name(value);
                app->name = strdupz(value);
            }
            else if (!strcmp(name, "metrics")) {
                simple_pattern_free(app->metrics);
                app->metrics = simple_pattern_create(value, ((void*)0), SIMPLE_PATTERN_EXACT);
            }
            else if (!strcmp(name, "private charts")) {
                if (!strcmp(value, "yes") || !strcmp(value, "on"))
                    app->default_options |= STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED;
                else
                    app->default_options &= ~STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED;
            }
            else if (!strcmp(name, "gaps when not collected")) {
                if (!strcmp(value, "yes") || !strcmp(value, "on"))
                    app->default_options |= STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED;
            }
            else if (!strcmp(name, "memory mode")) {
                app->rrd_memory_mode = rrd_memory_mode_id(value);
            }
            else if (!strcmp(name, "history")) {
                app->rrd_history_entries = atol(value);
                if (app->rrd_history_entries < 5)
                    app->rrd_history_entries = 5;
            }
            else {
                error("STATSD: ignoring line %zu ('%s') of file '%s'. Unknown keyword for the [app] section.", line, name, filename);
                continue;
            }
        }
        else {


            if(!strcmp(name, "name")) {
                freez((void *)chart->name);
                netdata_fix_chart_id(value);
                chart->name = strdupz(value);
            }
            else if(!strcmp(name, "title")) {
                freez((void *)chart->title);
                chart->title = strdupz(value);
            }
            else if (!strcmp(name, "family")) {
                freez((void *)chart->family);
                chart->family = strdupz(value);
            }
            else if (!strcmp(name, "context")) {
                freez((void *)chart->context);
                netdata_fix_chart_id(value);
                chart->context = strdupz(value);
            }
            else if (!strcmp(name, "units")) {
                freez((void *)chart->units);
                chart->units = strdupz(value);
            }
            else if (!strcmp(name, "priority")) {
                chart->priority = atol(value);
            }
            else if (!strcmp(name, "type")) {
                chart->chart_type = rrdset_type_id(value);
            }
            else if (!strcmp(name, "dimension")) {

                char *words[10];
                pluginsd_split_words(value, words, 10);

                int pattern = 0;
                size_t i = 0;
                char *metric_name = words[i++];

                if(strcmp(metric_name, "pattern") == 0) {
                    metric_name = words[i++];
                    pattern = 1;
                }

                char *dim_name = words[i++];
                char *type = words[i++];
                char *multipler = words[i++];
                char *divisor = words[i++];
                char *options = words[i++];

                RRDDIM_FLAGS flags = RRDDIM_FLAG_NONE;
                if(options && *options) {
                    if(strstr(options, "hidden") != ((void*)0)) flags |= RRDDIM_FLAG_HIDDEN;
                    if(strstr(options, "noreset") != ((void*)0)) flags |= RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS;
                    if(strstr(options, "nooverflow") != ((void*)0)) flags |= RRDDIM_FLAG_DONT_DETECT_RESETS_OR_OVERFLOWS;
                }

                if(!pattern) {
                    if(app->dict) {
                        if(dim_name && *dim_name) {
                            char *n = dictionary_get(app->dict, dim_name);
                            if(n) dim_name = n;
                        }
                        else {
                            dim_name = dictionary_get(app->dict, metric_name);
                        }
                    }

                    if(!dim_name || !*dim_name)
                        dim_name = metric_name;
                }

                STATSD_APP_CHART_DIM *dim = add_dimension_to_app_chart(
                        app
                        , chart
                        , metric_name
                        , dim_name
                        , (multipler && *multipler)?str2l(multipler):1
                        , (divisor && *divisor)?str2l(divisor):1
                        , flags
                        , string2valuetype(type, line, filename)
                );

                if(pattern)
                    dim->metric_pattern = simple_pattern_create(dim->metric, ((void*)0), SIMPLE_PATTERN_EXACT);
            }
            else {
                error("STATSD: ignoring line %zu ('%s') of file '%s'. Unknown keyword for the [%s] section.", line, name, filename, chart->id);
                continue;
            }
        }
    }

    freez(buffer);
    fclose(fp);
    return 0;
}
