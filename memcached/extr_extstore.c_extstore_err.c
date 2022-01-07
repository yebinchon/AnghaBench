
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum extstore_res { ____Placeholder_extstore_res } extstore_res ;
const char *extstore_err(enum extstore_res res) {
    char *rv = "unknown error";
    switch (res) {
        case 135:
            rv = "page_size must be divisible by wbuf_size";
            break;
        case 133:
            rv = "wbuf_count must be >= page_buckets";
            break;
        case 134:
            rv = "page_buckets must be > 0";
            break;
        case 130:
            rv = "page_size and wbuf_size must be divisible by 1024*1024*2";
            break;
        case 128:
            rv = "page_count must total to < 65536. Increase page_size or lower path sizes";
            break;
        case 132:
            rv = "failed calloc for engine";
            break;
        case 131:
            rv = "failed to open file";
            break;
        case 129:
            break;
    }
    return rv;
}
