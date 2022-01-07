
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {int dummy; } ;


 int reset (struct mp_filter*) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    reset(f);
}
