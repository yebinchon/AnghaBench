
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t __u8 ;





 size_t fread (void*,int,size_t,int ) ;
 int memset (void*,int ,size_t) ;
 int pattern ;
 int stdin ;

__attribute__((used)) static ssize_t
fill_in_buf(struct thread *ignore, void *buf, size_t nbytes)
{
 size_t i;
 __u8 *p;

 (void)ignore;

 switch (pattern) {
 case 128:
  memset(buf, 0, nbytes);
  break;

 case 129:
  for (p = buf, i = 0; i < nbytes; ++i, ++p)
   *p = i % 63;
  break;

 case 130:
  return fread(buf, 1, nbytes, stdin);
 }

 return nbytes;
}
