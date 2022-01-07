
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int da; } ;
struct ep_param {TYPE_1__ annotations; } ;
struct effect_parser {int dummy; } ;


 int ep_parse_annotations (struct effect_parser*,int *) ;

__attribute__((used)) static int ep_parse_param_annotations(struct effect_parser *ep,
          struct ep_param *param)
{
 return ep_parse_annotations(ep, &param->annotations.da);
}
