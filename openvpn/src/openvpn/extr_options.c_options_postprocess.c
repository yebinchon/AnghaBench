
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int dummy; } ;


 int options_postprocess_filechecks (struct options*) ;
 int options_postprocess_mutate (struct options*) ;
 int options_postprocess_verify (struct options*) ;

void
options_postprocess(struct options *options)
{
    options_postprocess_mutate(options);
    options_postprocess_verify(options);

    options_postprocess_filechecks(options);

}
