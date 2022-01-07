
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADI_MAX_VERSION ;
 int RDTICK (long) ;

__attribute__((used)) static int random_version(void)
{
 long tick;

 RDTICK(tick);

 return tick % (ADI_MAX_VERSION + 1);
}
