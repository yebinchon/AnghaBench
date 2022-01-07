
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 size_t find_cipher_data_index (int) ;

__attribute__((used)) static size_t get_cipher_data_index(int nid)
{
    size_t i = find_cipher_data_index(nid);

    if (i != (size_t)-1)
        return i;






    assert("Code that never should be reached" == ((void*)0));
    return -1;
}
