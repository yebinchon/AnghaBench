
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ tv ;



__attribute__((used)) static int timeval_subtract(tv *result, tv *end, tv *begin) {

 if (end->tv_usec < begin->tv_usec) {
  int nsec = (begin->tv_usec - end->tv_usec) / 1000000 + 1;
  begin->tv_usec -= 1000000 * nsec;
  begin->tv_sec += nsec;
 }
 if (end->tv_usec - begin->tv_usec > 1000000) {
  int nsec = (end->tv_usec - begin->tv_usec) / 1000000;
  begin->tv_usec += 1000000 * nsec;
  begin->tv_sec -= nsec;
 }


 result->tv_sec = end->tv_sec - begin->tv_sec;
 result->tv_usec = end->tv_usec - begin->tv_usec;


 return end->tv_sec < begin->tv_sec;
}
