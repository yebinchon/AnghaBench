
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int process_signal (struct context*) ;
 int remap_signal (struct context*) ;

__attribute__((used)) static bool
process_signal_p2p(struct context *c)
{
    remap_signal(c);
    return process_signal(c);
}
