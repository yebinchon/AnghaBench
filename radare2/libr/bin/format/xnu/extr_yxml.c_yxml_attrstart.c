
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int attr; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int yxml_pushstack (TYPE_1__*,int *,unsigned int) ;

__attribute__((used)) static inline yxml_ret_t yxml_attrstart (yxml_t *x, unsigned ch) { return yxml_pushstack(x, &x->attr, ch); }
