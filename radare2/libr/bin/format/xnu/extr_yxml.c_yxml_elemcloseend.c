
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* elem; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_ECLOSE ;
 int yxml_selfclose (TYPE_1__*,unsigned int) ;

__attribute__((used)) static inline yxml_ret_t yxml_elemcloseend(yxml_t *x, unsigned ch) {
 if(*x->elem)
  return YXML_ECLOSE;
 return yxml_selfclose(x, ch);
}
