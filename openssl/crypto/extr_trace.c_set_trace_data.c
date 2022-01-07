
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* bio; char* prefix; char* suffix; int type; } ;
typedef void const BIO ;


 int BIO_free (void const*) ;
 int CHANNEL ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int PREFIX ;
 int RUN_ONCE (int *,int ) ;
 int SUFFIX ;
 int ossl_trace_init ;
 TYPE_1__* trace_channels ;
 int trace_inited ;

__attribute__((used)) static int set_trace_data(int category, int type, BIO **channel,
                          const char **prefix, const char **suffix,
                          int (*attach_cb)(int, int, const void *),
                          int (*detach_cb)(int, int, const void *))
{
    BIO *curr_channel = ((void*)0);
    char *curr_prefix = ((void*)0);
    char *curr_suffix = ((void*)0);


    if (!RUN_ONCE(&trace_inited, ossl_trace_init))
        return 0;

    curr_channel = trace_channels[category].bio;
    curr_prefix = trace_channels[category].prefix;
    curr_suffix = trace_channels[category].suffix;


    if (prefix != ((void*)0) && curr_prefix != ((void*)0)) {
        detach_cb(category, PREFIX, curr_prefix);
    }

    if (suffix != ((void*)0) && curr_suffix != ((void*)0)) {
        detach_cb(category, SUFFIX, curr_suffix);
    }

    if (channel != ((void*)0) && curr_channel != ((void*)0)) {
        detach_cb(category, CHANNEL, curr_channel);
    }


    if (prefix != ((void*)0) && curr_prefix != ((void*)0)) {
        OPENSSL_free(curr_prefix);
        trace_channels[category].prefix = ((void*)0);
    }

    if (suffix != ((void*)0) && curr_suffix != ((void*)0)) {
        OPENSSL_free(curr_suffix);
        trace_channels[category].suffix = ((void*)0);
    }

    if (channel != ((void*)0) && curr_channel != ((void*)0)) {
        BIO_free(curr_channel);
        trace_channels[category].type = 0;
        trace_channels[category].bio = ((void*)0);
    }


    if (channel != ((void*)0) && *channel != ((void*)0)) {
        trace_channels[category].type = type;
        trace_channels[category].bio = *channel;
    }

    if (prefix != ((void*)0) && *prefix != ((void*)0)) {
        if ((curr_prefix = OPENSSL_strdup(*prefix)) == ((void*)0))
            return 0;
        trace_channels[category].prefix = curr_prefix;
    }

    if (suffix != ((void*)0) && *suffix != ((void*)0)) {
        if ((curr_suffix = OPENSSL_strdup(*suffix)) == ((void*)0))
            return 0;
        trace_channels[category].suffix = curr_suffix;
    }


    if (channel != ((void*)0) && *channel != ((void*)0)) {
        attach_cb(category, CHANNEL, *channel);
    }

    if (prefix != ((void*)0) && *prefix != ((void*)0)) {
        attach_cb(category, PREFIX, *prefix);
    }

    if (suffix != ((void*)0) && *suffix != ((void*)0)) {
        attach_cb(category, SUFFIX, *suffix);
    }

    return 1;
}
