
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {char const* extension; scalar_t__ hash; int contenttype; } ;


 int CT_APPLICATION_OCTET_STREAM ;
 TYPE_1__* mime_types ;
 void* simple_hash (char const*) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline uint8_t contenttype_for_filename(const char *filename) {


    static int initialized = 0;
    int i;

    if(unlikely(!initialized)) {
        for (i = 0; mime_types[i].extension; i++)
            mime_types[i].hash = simple_hash(mime_types[i].extension);

        initialized = 1;
    }

    const char *s = filename, *last_dot = ((void*)0);


    while(*s) {
        if(unlikely(*s == '.')) last_dot = s;
        s++;
    }

    if(unlikely(!last_dot || !*last_dot || !last_dot[1])) {

        return CT_APPLICATION_OCTET_STREAM;
    }
    last_dot++;



    uint32_t hash = simple_hash(last_dot);
    for(i = 0; mime_types[i].extension ; i++) {
        if(unlikely(hash == mime_types[i].hash && !strcmp(last_dot, mime_types[i].extension))) {

            return mime_types[i].contenttype;
        }
    }


    return CT_APPLICATION_OCTET_STREAM;
}
