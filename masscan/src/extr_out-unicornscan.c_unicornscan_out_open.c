
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {int dummy; } ;
typedef int FILE ;


 int UNUSEDPARM (struct Output*) ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void
unicornscan_out_open(struct Output *out, FILE *fp)
{
    UNUSEDPARM(out);
    fprintf(fp, "#masscan\n");
}
