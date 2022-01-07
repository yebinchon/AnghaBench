
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argbase ;
 int argbuf ;
 int line ;
 scalar_t__ margc ;
 char** margv ;
 scalar_t__ slrflag ;
 int slurpstring () ;
 int stringbase ;

void makeargv(void)
{
 const char **argp;

 margc = 0;
 argp = margv;
 stringbase = line;
 argbase = argbuf;
 slrflag = 0;
 while ((*argp++ = slurpstring()))
  margc++;
}
