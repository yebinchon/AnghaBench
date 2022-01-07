
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static inline int in_order(struct timespec a, struct timespec b)
{

 if ((unsigned long)a.tv_sec < (unsigned long)b.tv_sec)
  return 1;
 if ((unsigned long)a.tv_sec > (unsigned long)b.tv_sec)
  return 0;
 if (a.tv_nsec > b.tv_nsec)
  return 0;
 return 1;
}
