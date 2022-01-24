#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Banner1 {void* http_fields; void* memcached_stats; void* memcached_responses; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_anchored; int /*<<< orphan*/  id; scalar_t__ pattern; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_anchored; int /*<<< orphan*/  id; scalar_t__ pattern; } ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  SMACK_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* memcached_responses ; 
 TYPE_1__* memcached_stats ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,size_t) ; 
 void* sm_memcached_responses ; 
 void* sm_memcached_stats ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (scalar_t__) ; 

__attribute__((used)) static void *
FUNC7(struct Banner1 *b)
{
    unsigned i;

    /*
     * These match response codes
     */
    b->memcached_responses = FUNC5("memcached-responses", SMACK_CASE_INSENSITIVE);
    for (i=0; memcached_responses[i].pattern; i++) {
        char *tmp;
        unsigned j;
        size_t len;

        len = FUNC6(memcached_responses[i].pattern);
        tmp = FUNC0(len + 2);
        FUNC2(tmp, memcached_responses[i].pattern, len);
        tmp[len+1] = '\0';

        /* Add all patterns 4 times, once each for the possible whitespace */
        for (j=0; j<4; j++) {
            tmp[len] = " \t\r\n"[j];
            FUNC3(
                          b->memcached_responses,
                          tmp,
                          (unsigned)len+1,
                          memcached_responses[i].id,
                          memcached_responses[i].is_anchored);
        }

        FUNC1(tmp);
    }
    FUNC4(b->memcached_responses);
    sm_memcached_responses = b->memcached_responses;

    /*
     * These match stats we might be interested in
     */
    b->memcached_stats = FUNC5("memcached-stats", SMACK_CASE_INSENSITIVE);
    for (i=0; memcached_stats[i].pattern; i++) {
        char *tmp;
        unsigned j;
        size_t len;

        len = FUNC6(memcached_stats[i].pattern);
        tmp = FUNC0(len + 2);
        FUNC2(tmp, memcached_stats[i].pattern, len);
        tmp[len+1] = '\0';

        /* Add all patterns 4 times, once each for the possible whitespace */
        for (j=0; j<4; j++) {
            tmp[len] = " \t\r\n"[j];
            FUNC3(
                          b->memcached_stats,
                          tmp,
                          (unsigned)len+1,
                          memcached_stats[i].id,
                          memcached_stats[i].is_anchored);
        }

        FUNC1(tmp);
    }
    FUNC4(b->memcached_stats);
    sm_memcached_stats = b->memcached_stats;

    return b->http_fields;
}