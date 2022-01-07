
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {unsigned int count; struct Range* list; } ;
struct Range {int begin; int end; } ;
struct Masscan {struct RangeList targets; } ;
typedef int FILE ;


 unsigned int count_cidr_bits (struct Range) ;
 int fprintf (int *,char*,...) ;
 int * stdout ;

void
main_readrange(struct Masscan *masscan)
{
    struct RangeList *list = &masscan->targets;
    unsigned i;
    FILE *fp = stdout;

    for (i=0; i<list->count; i++) {
        struct Range range = list->list[i];
        fprintf(fp, "%u.%u.%u.%u",
            (range.begin>>24)&0xFF,
            (range.begin>>16)&0xFF,
            (range.begin>> 8)&0xFF,
            (range.begin>> 0)&0xFF
            );
        if (range.begin != range.end) {
            unsigned cidr_bits = count_cidr_bits(range);

            if (cidr_bits) {
                fprintf(fp, "/%u", cidr_bits);
            } else
            fprintf(fp, "-%u.%u.%u.%u",
                (range.end>>24)&0xFF,
                (range.end>>16)&0xFF,
                (range.end>> 8)&0xFF,
                (range.end>> 0)&0xFF
                );
        }
        fprintf(fp, "\n");
    }


}
