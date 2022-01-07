
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BACKEND_TYPE ;


 int BACKEND_TYPE_GRAPHITE ;
 int BACKEND_TYPE_JSON ;
 int BACKEND_TYPE_KINESIS ;
 int BACKEND_TYPE_MONGODB ;
 int BACKEND_TYPE_OPENTSDB_USING_HTTP ;
 int BACKEND_TYPE_OPENTSDB_USING_TELNET ;
 int BACKEND_TYPE_PROMETEUS ;
 int BACKEND_TYPE_UNKNOWN ;
 int strcmp (char const*,char*) ;

BACKEND_TYPE backend_select_type(const char *type) {
    if(!strcmp(type, "graphite") || !strcmp(type, "graphite:plaintext")) {
        return BACKEND_TYPE_GRAPHITE;
    }
    else if(!strcmp(type, "opentsdb") || !strcmp(type, "opentsdb:telnet")) {
        return BACKEND_TYPE_OPENTSDB_USING_TELNET;
    }
    else if(!strcmp(type, "opentsdb:http") || !strcmp(type, "opentsdb:https")) {
        return BACKEND_TYPE_OPENTSDB_USING_HTTP;
    }
    else if (!strcmp(type, "json") || !strcmp(type, "json:plaintext")) {
        return BACKEND_TYPE_JSON;
    }
    else if (!strcmp(type, "prometheus_remote_write")) {
        return BACKEND_TYPE_PROMETEUS;
    }
    else if (!strcmp(type, "kinesis") || !strcmp(type, "kinesis:plaintext")) {
        return BACKEND_TYPE_KINESIS;
    }
    else if (!strcmp(type, "mongodb") || !strcmp(type, "mongodb:plaintext")) {
        return BACKEND_TYPE_MONGODB;
    }

    return BACKEND_TYPE_UNKNOWN;
}
