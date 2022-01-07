
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widefelem ;
typedef int tmp ;
typedef int felem ;


 int felem_diff_128_64 (int ,int const) ;
 int felem_reduce (int ,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void felem_neg(felem out, const felem in)
{
    widefelem tmp;

    memset(tmp, 0, sizeof(tmp));
    felem_diff_128_64(tmp, in);
    felem_reduce(out, tmp);
}
