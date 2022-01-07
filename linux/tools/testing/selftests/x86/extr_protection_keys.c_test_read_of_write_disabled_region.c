
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int dprintf1 (char*,...) ;
 int pkey_write_deny (int ) ;
 int read_ptr (int*) ;

void test_read_of_write_disabled_region(int *ptr, u16 pkey)
{
 int ptr_contents;

 dprintf1("disabling write access to PKEY[1], doing read\n");
 pkey_write_deny(pkey);
 ptr_contents = read_ptr(ptr);
 dprintf1("*ptr: %d\n", ptr_contents);
 dprintf1("\n");
}
