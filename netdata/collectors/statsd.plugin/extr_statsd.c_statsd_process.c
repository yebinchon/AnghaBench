
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_STATSD ;
 int debug (int ,char*,size_t,char*) ;
 scalar_t__ likely (int) ;
 int memmove (char*,char const*,size_t) ;
 int statsd_parse_field_trim (char const*,char*) ;
 char* statsd_parse_skip_spaces (char const*) ;
 scalar_t__ statsd_parse_skip_up_to (char const*,char,char) ;
 int statsd_process_metric (int ,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline size_t statsd_process(char *buffer, size_t size, int require_newlines) {
    buffer[size] = '\0';
    debug(D_STATSD, "RECEIVED: %zu bytes: '%s'", size, buffer);

    const char *s = buffer;
    while(*s) {
        const char *name = ((void*)0), *value = ((void*)0), *type = ((void*)0), *sampling = ((void*)0), *tags = ((void*)0);
        char *name_end = ((void*)0), *value_end = ((void*)0), *type_end = ((void*)0), *sampling_end = ((void*)0), *tags_end = ((void*)0);

        s = name_end = (char *)statsd_parse_skip_up_to(name = s, ':', '|');
        if(name == name_end) {
            s = statsd_parse_skip_spaces(s);
            continue;
        }

        if(likely(*s == ':'))
            s = value_end = (char *) statsd_parse_skip_up_to(value = ++s, '|', '|');

        if(likely(*s == '|'))
            s = type_end = (char *) statsd_parse_skip_up_to(type = ++s, '|', '@');

        if(likely(*s == '|' || *s == '@')) {
            s = sampling_end = (char *) statsd_parse_skip_up_to(sampling = ++s, '|', '#');
            if(*sampling == '@') sampling++;
        }

        if(likely(*s == '|' || *s == '#')) {
            s = tags_end = (char *) statsd_parse_skip_up_to(tags = ++s, '|', '|');
            if(*tags == '#') tags++;
        }


        while(*s && *s != '\n') s++;

        if(unlikely(require_newlines && *s != '\n' && s > buffer)) {

            size -= (name - buffer);
            memmove(buffer, name, size);
            return size;
        }
        else
            s = statsd_parse_skip_spaces(s);

        statsd_process_metric(
                  statsd_parse_field_trim(name, name_end)
                , statsd_parse_field_trim(value, value_end)
                , statsd_parse_field_trim(type, type_end)
                , statsd_parse_field_trim(sampling, sampling_end)
                , statsd_parse_field_trim(tags, tags_end)
        );
    }

    return 0;
}
