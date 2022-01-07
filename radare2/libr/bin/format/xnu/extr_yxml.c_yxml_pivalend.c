
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pi; scalar_t__ stack; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_PIEND ;
 int yxml_popstack (TYPE_1__*) ;

__attribute__((used)) static inline yxml_ret_t yxml_pivalend (yxml_t *x, unsigned ch) { yxml_popstack(x); x->pi = (char *)x->stack; return YXML_PIEND; }
