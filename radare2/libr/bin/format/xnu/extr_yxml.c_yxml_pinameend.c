
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pi; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_ESYN ;
 int YXML_PISTART ;

__attribute__((used)) static inline yxml_ret_t yxml_pinameend(yxml_t *x, unsigned ch) {
 return (x->pi[0]|32) == 'x' && (x->pi[1]|32) == 'm' && (x->pi[2]|32) == 'l' && !x->pi[3] ? YXML_ESYN : YXML_PISTART;
}
