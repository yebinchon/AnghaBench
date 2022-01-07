
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRD_MEMORY_MODE ;


 int RRD_MEMORY_MODE_ALLOC ;
 int RRD_MEMORY_MODE_ALLOC_NAME ;
 int RRD_MEMORY_MODE_DBENGINE ;
 int RRD_MEMORY_MODE_DBENGINE_NAME ;
 int RRD_MEMORY_MODE_MAP ;
 int RRD_MEMORY_MODE_MAP_NAME ;
 int RRD_MEMORY_MODE_NONE ;
 int RRD_MEMORY_MODE_NONE_NAME ;
 int RRD_MEMORY_MODE_RAM ;
 int RRD_MEMORY_MODE_RAM_NAME ;
 int RRD_MEMORY_MODE_SAVE ;
 int strcmp (char const*,int ) ;
 scalar_t__ unlikely (int) ;

RRD_MEMORY_MODE rrd_memory_mode_id(const char *name) {
    if(unlikely(!strcmp(name, RRD_MEMORY_MODE_RAM_NAME)))
        return RRD_MEMORY_MODE_RAM;

    else if(unlikely(!strcmp(name, RRD_MEMORY_MODE_MAP_NAME)))
        return RRD_MEMORY_MODE_MAP;

    else if(unlikely(!strcmp(name, RRD_MEMORY_MODE_NONE_NAME)))
        return RRD_MEMORY_MODE_NONE;

    else if(unlikely(!strcmp(name, RRD_MEMORY_MODE_ALLOC_NAME)))
        return RRD_MEMORY_MODE_ALLOC;

    else if(unlikely(!strcmp(name, RRD_MEMORY_MODE_DBENGINE_NAME)))
        return RRD_MEMORY_MODE_DBENGINE;

    return RRD_MEMORY_MODE_SAVE;
}
