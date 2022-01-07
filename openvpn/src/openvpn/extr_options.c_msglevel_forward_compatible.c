
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {scalar_t__ forward_compatible; } ;


 int M_WARN ;

__attribute__((used)) static inline int
msglevel_forward_compatible(struct options *options, const int msglevel)
{
    return options->forward_compatible ? M_WARN : msglevel;
}
