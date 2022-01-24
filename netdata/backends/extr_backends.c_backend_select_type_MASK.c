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
typedef  int /*<<< orphan*/  BACKEND_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  BACKEND_TYPE_GRAPHITE ; 
 int /*<<< orphan*/  BACKEND_TYPE_JSON ; 
 int /*<<< orphan*/  BACKEND_TYPE_KINESIS ; 
 int /*<<< orphan*/  BACKEND_TYPE_MONGODB ; 
 int /*<<< orphan*/  BACKEND_TYPE_OPENTSDB_USING_HTTP ; 
 int /*<<< orphan*/  BACKEND_TYPE_OPENTSDB_USING_TELNET ; 
 int /*<<< orphan*/  BACKEND_TYPE_PROMETEUS ; 
 int /*<<< orphan*/  BACKEND_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

BACKEND_TYPE FUNC1(const char *type) {
    if(!FUNC0(type, "graphite") || !FUNC0(type, "graphite:plaintext")) {
        return BACKEND_TYPE_GRAPHITE;
    }
    else if(!FUNC0(type, "opentsdb") || !FUNC0(type, "opentsdb:telnet")) {
        return BACKEND_TYPE_OPENTSDB_USING_TELNET;
    }
    else if(!FUNC0(type, "opentsdb:http") || !FUNC0(type, "opentsdb:https")) {
        return BACKEND_TYPE_OPENTSDB_USING_HTTP;
    }
    else if (!FUNC0(type, "json") || !FUNC0(type, "json:plaintext")) {
        return BACKEND_TYPE_JSON;
    }
    else if (!FUNC0(type, "prometheus_remote_write")) {
        return  BACKEND_TYPE_PROMETEUS;
    }
    else if (!FUNC0(type, "kinesis") || !FUNC0(type, "kinesis:plaintext")) {
        return BACKEND_TYPE_KINESIS;
    }
    else if (!FUNC0(type, "mongodb") || !FUNC0(type, "mongodb:plaintext")) {
        return BACKEND_TYPE_MONGODB;
    }

    return BACKEND_TYPE_UNKNOWN;
}