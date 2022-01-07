
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* s; } ;
typedef TYPE_1__ str ;


 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

str * coap_new_string(size_t size) {
  str *s = (str *)malloc(sizeof(str) + size + 1);
  if ( !s ) {
    return ((void*)0);
  }

  memset(s, 0, sizeof(str));
  s->s = ((unsigned char *)s) + sizeof(str);
  return s;
}
