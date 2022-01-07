
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUFFER ;


 int buffer_sprintf (int *,char*,char*,char*,char*) ;

int health_silencers2json_entry(BUFFER *wb, char* var, char* val, int hasprev) {
    if (val) {
        buffer_sprintf(wb, "%s\n\t\t\t\"%s\": \"%s\"", (hasprev)?",":"", var, val);
        return 1;
    } else {
        return hasprev;
    }
}
