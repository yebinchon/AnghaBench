
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int CLEAR (struct context) ;

void
context_clear(struct context *c)
{
    CLEAR(*c);
}
