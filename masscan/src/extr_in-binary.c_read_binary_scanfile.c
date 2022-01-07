
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {scalar_t__ when_scan_started; } ;
struct Masscan {int banner_types; int ports; int targets; } ;


 struct Output* output_create (struct Masscan*,int ) ;
 int output_destroy (struct Output*) ;
 int parse_file (struct Output*,char*,int *,int *,int *) ;

void
read_binary_scanfile(struct Masscan *masscan,
                     int arg_first, int arg_max, char *argv[])
{
    struct Output *out;
    int i;




    out = output_create(masscan, 0);





    out->when_scan_started = 0;
    for (i=arg_first; i<arg_max; i++) {
        parse_file(out, argv[i], &masscan->targets, &masscan->ports,
                   &masscan->banner_types);
    }

    output_destroy(out);



}
