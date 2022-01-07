
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor_data {scalar_t__ weak_sidechain; } ;
typedef int obs_source_t ;


 int * obs_weak_source_get_source (scalar_t__) ;

__attribute__((used)) static inline obs_source_t *get_sidechain(struct compressor_data *cd)
{
 if (cd->weak_sidechain)
  return obs_weak_source_get_source(cd->weak_sidechain);
 return ((void*)0);
}
