
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {int r_name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
rcomp(const void *cp1, const void *cp2)
{
 return strcmp(((const struct rule *) cp1)->r_name,
      ((const struct rule *) cp2)->r_name);
}
