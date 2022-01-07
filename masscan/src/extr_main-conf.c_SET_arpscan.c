
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Range {void* end; void* begin; } ;
struct TYPE_2__ {int arp; } ;
struct Masscan {TYPE_1__ scan_type; int ports; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int LOG (int,char*) ;
 void* Templ_ARP ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 int masscan_set_parameter (struct Masscan*,char*,char*) ;
 int rangelist_add_range (int *,void*,void*) ;
 int rangelist_sort (int *) ;

__attribute__((used)) static int SET_arpscan(struct Masscan *masscan, const char *name, const char *value)
{
    struct Range range;

    UNUSEDPARM(name);
    UNUSEDPARM(value);

    if (masscan->echo) {
        if (masscan->scan_type.arp || masscan->echo_all)
            fprintf(masscan->echo, "arpscan = %s\n", masscan->scan_type.arp?"true":"false");
        return 0;
    }
    range.begin = Templ_ARP;
    range.end = Templ_ARP;
    rangelist_add_range(&masscan->ports, range.begin, range.end);
    rangelist_sort(&masscan->ports);
    masscan_set_parameter(masscan, "router-mac", "ff-ff-ff-ff-ff-ff");
    masscan->scan_type.arp = 1;
    LOG(5, "--arpscan\n");
    return CONF_OK;
}
