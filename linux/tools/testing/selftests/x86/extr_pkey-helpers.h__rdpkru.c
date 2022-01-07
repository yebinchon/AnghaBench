
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __rdpkru () ;
 int assert (int) ;
 int dprintf4 (char*,int,unsigned int,unsigned int) ;
 unsigned int shadow_pkru ;

__attribute__((used)) static inline unsigned int _rdpkru(int line)
{
 unsigned int pkru = __rdpkru();

 dprintf4("rdpkru(line=%d) pkru: %x shadow: %x\n",
   line, pkru, shadow_pkru);
 assert(pkru == shadow_pkru);

 return pkru;
}
