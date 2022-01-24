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
struct TYPE_2__ {void* bio; char* prefix; char* suffix; int type; } ;
typedef  void const BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  PREFIX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUFFIX ; 
 int /*<<< orphan*/  ossl_trace_init ; 
 TYPE_1__* trace_channels ; 
 int /*<<< orphan*/  trace_inited ; 

__attribute__((used)) static int FUNC4(int category, int type, BIO **channel,
                          const char **prefix, const char **suffix,
                          int (*attach_cb)(int, int, const void *),
                          int (*detach_cb)(int, int, const void *))
{
    BIO *curr_channel = NULL;
    char *curr_prefix = NULL;
    char *curr_suffix = NULL;

    /* Ensure do_ossl_trace_init() is called once */
    if (!FUNC3(&trace_inited, ossl_trace_init))
        return 0;

    curr_channel = trace_channels[category].bio;
    curr_prefix = trace_channels[category].prefix;
    curr_suffix = trace_channels[category].suffix;

    /* Make sure to run the detach callback first on all data */
    if (prefix != NULL && curr_prefix != NULL) {
        detach_cb(category, PREFIX, curr_prefix);
    }

    if (suffix != NULL && curr_suffix != NULL) {
        detach_cb(category, SUFFIX, curr_suffix);
    }

    if (channel != NULL && curr_channel != NULL) {
        detach_cb(category, CHANNEL, curr_channel);
    }

    /* After detach callbacks are done, clear data where appropriate */
    if (prefix != NULL && curr_prefix != NULL) {
        FUNC1(curr_prefix);
        trace_channels[category].prefix = NULL;
    }

    if (suffix != NULL && curr_suffix != NULL) {
        FUNC1(curr_suffix);
        trace_channels[category].suffix = NULL;
    }

    if (channel != NULL && curr_channel != NULL) {
        FUNC0(curr_channel);
        trace_channels[category].type = 0;
        trace_channels[category].bio = NULL;
    }

    /* Before running callbacks are done, set new data where appropriate */
    if (channel != NULL && *channel != NULL) {
        trace_channels[category].type = type;
        trace_channels[category].bio = *channel;
    }

    if (prefix != NULL && *prefix != NULL) {
        if ((curr_prefix = FUNC2(*prefix)) == NULL)
            return 0;
        trace_channels[category].prefix = curr_prefix;
    }

    if (suffix != NULL && *suffix != NULL) {
        if ((curr_suffix = FUNC2(*suffix)) == NULL)
            return 0;
        trace_channels[category].suffix = curr_suffix;
    }

    /* Finally, run the attach callback on the new data */
    if (channel != NULL && *channel != NULL) {
        attach_cb(category, CHANNEL, *channel);
    }

    if (prefix != NULL && *prefix != NULL) {
        attach_cb(category, PREFIX, *prefix);
    }

    if (suffix != NULL && *suffix != NULL) {
        attach_cb(category, SUFFIX, *suffix);
    }

    return 1;
}