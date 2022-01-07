
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dummy; } ;


 int gmt ;
 scalar_t__ tzload (int ,int *,struct state* const,int) ;
 int tzparse (int ,struct state* const,int) ;

__attribute__((used)) static void
gmtload(struct state *const sp)
{
 if (tzload(gmt, ((void*)0), sp, 1) != 0)
  tzparse(gmt, sp, 1);
}
