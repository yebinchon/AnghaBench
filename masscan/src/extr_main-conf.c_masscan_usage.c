
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
masscan_usage(void)
{
    printf("usage:\n");
    printf("masscan -p80,8000-8100 10.0.0.0/8 --rate=10000\n");
    printf(" scan some web ports on 10.x.x.x at 10kpps\n");
    printf("masscan --nmap\n");
    printf(" list those options that are compatible with nmap\n");
    printf("masscan -p80 10.0.0.0/8 --banners -oB <filename>\n");
    printf(" save results of scan in binary format to <filename>\n");
    printf("masscan --open --banners --readscan <filename> -oX <savefile>\n");
    printf(" read binary scan results in <filename> and save them as xml in <savefile>\n");
    exit(1);
}
