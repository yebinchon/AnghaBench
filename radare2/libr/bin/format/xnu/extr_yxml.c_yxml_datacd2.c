
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXML_CONTENT ;
 int yxml_setchar (char*,unsigned int) ;

__attribute__((used)) static inline yxml_ret_t yxml_datacd2(yxml_t *x, unsigned ch) {
 x->data[0] = ']';
 x->data[1] = ']';
 yxml_setchar(x->data+2, ch);
 x->data[3] = 0;
 return YXML_CONTENT;
}
