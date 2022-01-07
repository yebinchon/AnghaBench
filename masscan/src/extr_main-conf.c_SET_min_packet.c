
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {int min_packet_size; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,int) ;
 scalar_t__ parseInt (char const*) ;

__attribute__((used)) static int SET_min_packet(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        if (masscan->min_packet_size != 60 || masscan->echo_all)
            fprintf(masscan->echo, "min-packet = %u\n", masscan->min_packet_size);
        return 0;
    }
    masscan->min_packet_size = (unsigned)parseInt(value);
    return CONF_OK;
}
