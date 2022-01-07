
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct num2name_data_st {size_t idx; char const* name; } ;
typedef int OSSL_NAMEMAP ;


 int do_num2name ;
 int ossl_namemap_doall_names (int const*,int,int ,struct num2name_data_st*) ;

const char *ossl_namemap_num2name(const OSSL_NAMEMAP *namemap, int number,
                                  size_t idx)
{
    struct num2name_data_st data;

    data.idx = idx;
    data.name = ((void*)0);
    ossl_namemap_doall_names(namemap, number, do_num2name, &data);
    return data.name;
}
