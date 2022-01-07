
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AtEOXact_GUC (int,int) ;

__attribute__((used)) static void
restoreLocalGucs(int nestlevel)
{

 if (nestlevel > 0)
  AtEOXact_GUC(1, nestlevel);
}
