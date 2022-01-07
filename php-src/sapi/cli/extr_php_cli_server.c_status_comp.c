
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ code; } ;
typedef TYPE_1__ http_response_status_code_pair ;



__attribute__((used)) static int status_comp(const void *a, const void *b)
{
 const http_response_status_code_pair *pa = (const http_response_status_code_pair *) a;
 const http_response_status_code_pair *pb = (const http_response_status_code_pair *) b;

 if (pa->code < pb->code) {
  return -1;
 } else if (pa->code > pb->code) {
  return 1;
 }

 return 0;
}
