
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*) ;

void usage()
{
 printf("Usage: tmon [OPTION...]\n");
 printf("  -c, --control         cooling device in control\n");
 printf("  -d, --daemon          run as daemon, no TUI\n");
 printf("  -g, --debug           debug message in syslog\n");
 printf("  -h, --help            show this help message\n");
 printf("  -l, --log             log data to /var/tmp/tmon.log\n");
 printf("  -t, --time-interval   sampling time interval, > 1 sec.\n");
 printf("  -T, --target-temp     initial target temperature\n");
 printf("  -v, --version         show version\n");
 printf("  -z, --zone            target thermal zone id\n");

 exit(0);
}
