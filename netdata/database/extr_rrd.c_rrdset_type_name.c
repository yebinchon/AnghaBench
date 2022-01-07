
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET_TYPE ;



 char const* RRDSET_TYPE_AREA_NAME ;

 char const* RRDSET_TYPE_LINE_NAME ;

 char const* RRDSET_TYPE_STACKED_NAME ;

const char *rrdset_type_name(RRDSET_TYPE chart_type) {
    switch(chart_type) {
        case 129:
        default:
            return RRDSET_TYPE_LINE_NAME;

        case 130:
            return RRDSET_TYPE_AREA_NAME;

        case 128:
            return RRDSET_TYPE_STACKED_NAME;
    }
}
