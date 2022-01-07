
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RangeList {unsigned int count; TYPE_1__* list; } ;
struct TYPE_2__ {int begin; int end; } ;
typedef int FILE ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
nmapserviceprobes_print_ports(const struct RangeList *ranges, FILE *fp, const char *prefix, int default_proto)
{
    unsigned i;


    if (ranges == ((void*)0) || ranges->count == 0)
        return;


    fprintf(fp, "%s ", prefix);


    for (i=0; i<ranges->count; i++) {
        int proto;
        int begin = ranges->list[i].begin;
        int end = ranges->list[i].end;

        if (130 <= begin && begin < 129)
            proto = 130;
        else if (129 <= begin && begin < 131)
            proto = 129;
        else
            proto = 131;


        begin -= proto;
        end -= proto;


        if (i)
            fprintf(fp, ",");


        if (default_proto != proto) {
            default_proto = proto;
            switch (proto) {
                case 130: fprintf(fp, "T:"); break;
                case 129: fprintf(fp, "U:"); break;
                case 131: fprintf(fp, "S"); break;
                case 133: fprintf(fp, "e"); break;
                case 132: fprintf(fp, "t"); break;
                case 134: fprintf(fp, "A"); break;
                case 128: fprintf(fp, "v"); break;
            }
        }
        fprintf(fp, "%u", begin);
        if (end > begin)
            fprintf(fp, "-%u", end);
    }
    fprintf(fp, "\n");
}
