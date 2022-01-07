
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; scalar_t__ key; } ;
typedef TYPE_1__ header_t ;


 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int headers_length(const header_t *headers) {
  int length = 0;
  for(; headers->key; headers++)
    length += strlen(headers->key) + strlen(headers->value) + 4;
  return length;
}
