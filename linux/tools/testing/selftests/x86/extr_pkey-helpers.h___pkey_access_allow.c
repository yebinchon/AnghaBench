
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintf4 (char*,unsigned int) ;
 unsigned int rdpkru () ;
 int wrpkru (unsigned int) ;

__attribute__((used)) static inline void __pkey_access_allow(int pkey, int do_allow)
{
 unsigned int pkru = rdpkru();
 int bit = pkey * 2;

 if (do_allow)
  pkru &= (1<<bit);
 else
  pkru |= (1<<bit);

 dprintf4("pkru now: %08x\n", rdpkru());
 wrpkru(pkru);
}
