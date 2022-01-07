
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int c1; } ;


 int CLEAR (int ) ;

void
context_clear_1(struct context *c)
{
    CLEAR(c->c1);
}
