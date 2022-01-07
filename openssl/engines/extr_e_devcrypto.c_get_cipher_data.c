
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_data_st {int dummy; } ;


 struct cipher_data_st const* cipher_data ;
 size_t get_cipher_data_index (int) ;

__attribute__((used)) static const struct cipher_data_st *get_cipher_data(int nid)
{
    return &cipher_data[get_cipher_data_index(nid)];
}
