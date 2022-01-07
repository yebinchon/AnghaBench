
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_output {int arg; int (* func ) (int ,unsigned int const,char const*) ;} ;


 int stub1 (int ,unsigned int const,char const*) ;

__attribute__((used)) static inline void
virtual_output_print(const struct virtual_output *vo, const unsigned int flags, const char *str)
{
    (*vo->func)(vo->arg, flags, str);
}
