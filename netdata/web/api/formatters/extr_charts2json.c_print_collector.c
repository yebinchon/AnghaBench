
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct collector {char* plugin; char* module; } ;
struct array_printer {scalar_t__ c; int * wb; } ;
typedef int BUFFER ;


 int buffer_strcat (int *,char*) ;

int print_collector(void *entry, void *data) {
    struct array_printer *ap = (struct array_printer *)data;
    BUFFER *wb = ap->wb;
    struct collector *col=(struct collector *) entry;
    if(ap->c) buffer_strcat(wb, ",");
    buffer_strcat(wb, "\n\t\t{\n\t\t\t\"plugin\": \"");
    buffer_strcat(wb, col->plugin);
    buffer_strcat(wb, "\",\n\t\t\t\"module\": \"");
    buffer_strcat(wb, col->module);
    buffer_strcat(wb, "\"\n\t\t}");
    (ap->c)++;
    return 0;
}
