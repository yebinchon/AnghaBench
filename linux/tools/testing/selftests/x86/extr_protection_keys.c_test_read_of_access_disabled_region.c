
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int dprintf1 (char*,int,...) ;
 int expected_pk_fault (int ) ;
 int pkey_access_deny (int ) ;
 int rdpkru () ;
 int read_ptr (int*) ;

void test_read_of_access_disabled_region(int *ptr, u16 pkey)
{
 int ptr_contents;

 dprintf1("disabling access to PKEY[%02d], doing read @ %p\n", pkey, ptr);
 rdpkru();
 pkey_access_deny(pkey);
 ptr_contents = read_ptr(ptr);
 dprintf1("*ptr: %d\n", ptr_contents);
 expected_pk_fault(pkey);
}
