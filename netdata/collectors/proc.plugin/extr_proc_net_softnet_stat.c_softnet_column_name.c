
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *softnet_column_name(size_t column) {
    switch(column) {

        case 0: return "processed";
        case 1: return "dropped";
        case 2: return "squeezed";
        case 9: return "received_rps";
        case 10: return "flow_limit_count";
        default: return ((void*)0);
    }
}
