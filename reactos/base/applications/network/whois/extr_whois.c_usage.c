
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage()
{
 (void)fprintf(stderr, "usage: whois [-h hostname] name ...\n");
 cleanup(1);
}
