
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* perf; } ;
struct TYPE_4__ {int erfOper; int erfType; int fError; } ;
typedef TYPE_2__ FDI_Int ;


 int SetLastError (int) ;
 int TRUE ;

__attribute__((used)) static void set_error( FDI_Int *fdi, int oper, int err )
{
    fdi->perf->erfOper = oper;
    fdi->perf->erfType = err;
    fdi->perf->fError = TRUE;
    if (err) SetLastError( err );
}
