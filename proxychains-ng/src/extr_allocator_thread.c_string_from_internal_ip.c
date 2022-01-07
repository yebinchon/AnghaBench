
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ip_type4 ;
struct TYPE_4__ {size_t counter; TYPE_1__** list; } ;
struct TYPE_3__ {char* string; } ;


 int PFUNC () ;
 size_t index_from_internal_ip (int ) ;
 TYPE_2__* internal_ips ;

char *string_from_internal_ip(ip_type4 internalip) {
 PFUNC();
 char *res = ((void*)0);
 uint32_t index = index_from_internal_ip(internalip);
 if(index < internal_ips->counter)
  res = internal_ips->list[index]->string;
 return res;
}
