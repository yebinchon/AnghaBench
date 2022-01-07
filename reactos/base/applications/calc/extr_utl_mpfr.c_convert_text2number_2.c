
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {int base; char* buffer; } ;


 int CP_ACP ;




 int MPFR_DEFAULT_RND ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 scalar_t__ _alloca (int) ;
 TYPE_3__ calc ;
 int mpfr_strtofr (int ,char*,int *,int,int ) ;

void convert_text2number_2(calc_number_t *a)
{
    int base;





    switch (calc.base) {
    case 129: base = 16; break;
    case 130: base = 10; break;
    case 128: base = 8; break;
    case 131: base = 2; break;
    default: return;
    }
    mpfr_strtofr(a->mf, calc.buffer, ((void*)0), base, MPFR_DEFAULT_RND);

}
