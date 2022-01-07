
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRD_MEMORY_MODE ;



 char const* RRD_MEMORY_MODE_ALLOC_NAME ;

 char const* RRD_MEMORY_MODE_DBENGINE_NAME ;

 char const* RRD_MEMORY_MODE_MAP_NAME ;

 char const* RRD_MEMORY_MODE_NONE_NAME ;

 char const* RRD_MEMORY_MODE_RAM_NAME ;

 char const* RRD_MEMORY_MODE_SAVE_NAME ;

inline const char *rrd_memory_mode_name(RRD_MEMORY_MODE id) {
    switch(id) {
        case 129:
            return RRD_MEMORY_MODE_RAM_NAME;

        case 131:
            return RRD_MEMORY_MODE_MAP_NAME;

        case 130:
            return RRD_MEMORY_MODE_NONE_NAME;

        case 128:
            return RRD_MEMORY_MODE_SAVE_NAME;

        case 133:
            return RRD_MEMORY_MODE_ALLOC_NAME;

        case 132:
            return RRD_MEMORY_MODE_DBENGINE_NAME;
    }

    return RRD_MEMORY_MODE_SAVE_NAME;
}
