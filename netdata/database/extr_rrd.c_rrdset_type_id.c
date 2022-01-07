
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET_TYPE ;


 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_AREA_NAME ;
 int RRDSET_TYPE_LINE ;
 int RRDSET_TYPE_STACKED ;
 int RRDSET_TYPE_STACKED_NAME ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ unlikely (int) ;

inline RRDSET_TYPE rrdset_type_id(const char *name) {
    if(unlikely(strcmp(name, RRDSET_TYPE_AREA_NAME) == 0))
        return RRDSET_TYPE_AREA;

    else if(unlikely(strcmp(name, RRDSET_TYPE_STACKED_NAME) == 0))
        return RRDSET_TYPE_STACKED;

    else
        return RRDSET_TYPE_LINE;
}
