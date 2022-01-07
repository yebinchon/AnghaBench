
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_token {int dummy; } ;
struct TYPE_2__ {struct cf_token* array; } ;
struct cf_def {TYPE_1__ params; } ;



__attribute__((used)) static inline struct cf_token *cf_def_getparam(const struct cf_def *cfd,
            size_t idx)
{
 return cfd->params.array + idx;
}
