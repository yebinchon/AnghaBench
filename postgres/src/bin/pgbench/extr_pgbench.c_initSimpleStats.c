
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SimpleStats ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
initSimpleStats(SimpleStats *ss)
{
 memset(ss, 0, sizeof(SimpleStats));
}
