
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIMPLE_PATTERN ;


 int SIMPLE_PATTERN_EXACT ;
 int dimension_remove_pipe_comma (char*) ;
 int freez (char*) ;
 int * simple_pattern_create (char*,int *,int ) ;
 char* strdupz (char*) ;

SIMPLE_PATTERN *health_pattern_from_foreach(char *s) {
    char *convert= strdupz(s);
    SIMPLE_PATTERN *val = ((void*)0);
    if(convert) {
        dimension_remove_pipe_comma(convert);
        val = simple_pattern_create(convert, ((void*)0), SIMPLE_PATTERN_EXACT);

        freez(convert);
    }

    return val;
}
