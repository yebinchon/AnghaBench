
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct obs_source {TYPE_1__ context; } ;


 scalar_t__ obs_source_valid (struct obs_source const*,char const*) ;

__attribute__((used)) static inline bool data_valid(const struct obs_source *source, const char *f)
{
 return obs_source_valid(source, f) && source->context.data;
}
