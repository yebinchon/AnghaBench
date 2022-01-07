
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int obs_source_addref (int *) ;

__attribute__((used)) static inline obs_source_t *new_ref(obs_source_t *source)
{
 obs_source_addref(source);
 return source;
}
