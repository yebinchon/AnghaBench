
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 int MAP_CHUNK_SIZE ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 char* mmap (void*,int ,int,int,int,int ) ;

__attribute__((used)) static int validate_lower_address_hint(void)
{
 char *ptr;

 ptr = mmap((void *) (1UL << 45), MAP_CHUNK_SIZE, PROT_READ |
   PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

 if (ptr == MAP_FAILED)
  return 0;

 return 1;
}
