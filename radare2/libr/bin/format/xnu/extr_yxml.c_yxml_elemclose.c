
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ elem; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_ECLOSE ;
 int YXML_OK ;

__attribute__((used)) static inline yxml_ret_t yxml_elemclose(yxml_t *x, unsigned ch) {
 if(*((unsigned char *)x->elem) != ch)
  return YXML_ECLOSE;
 x->elem++;
 return YXML_OK;
}
