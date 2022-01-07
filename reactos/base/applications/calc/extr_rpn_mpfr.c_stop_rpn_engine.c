
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int mf; } ;
struct TYPE_11__ {TYPE_3__ number; } ;
struct TYPE_9__ {int mf; } ;
struct TYPE_8__ {int mf; } ;
struct TYPE_14__ {TYPE_4__ memory; TYPE_2__ prev; TYPE_1__ code; } ;
struct TYPE_12__ {int mf; } ;
struct TYPE_13__ {TYPE_5__ number; } ;


 TYPE_7__ calc ;
 int mpfr_clear (int ) ;
 TYPE_6__ temp ;

void stop_rpn_engine(void)
{
    mpfr_clear(calc.code.mf);
    mpfr_clear(calc.prev.mf);
    mpfr_clear(calc.memory.number.mf);
    mpfr_clear(temp.number.mf);
}
