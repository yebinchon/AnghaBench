
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;
typedef scalar_t__ Cash ;



__attribute__((used)) static bool
gbt_cashge(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (*((const Cash *) a) >= *((const Cash *) b));
}
