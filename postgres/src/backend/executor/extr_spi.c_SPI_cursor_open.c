
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argtypes; int nargs; } ;
typedef TYPE_1__* SPIPlanPtr ;
typedef int Portal ;
typedef scalar_t__ ParamListInfo ;
typedef int Datum ;


 int SPI_cursor_open_internal (char const*,TYPE_1__*,scalar_t__,int) ;
 scalar_t__ _SPI_convert_params (int ,int ,int *,char const*) ;
 int pfree (scalar_t__) ;

Portal
SPI_cursor_open(const char *name, SPIPlanPtr plan,
    Datum *Values, const char *Nulls,
    bool read_only)
{
 Portal portal;
 ParamListInfo paramLI;


 paramLI = _SPI_convert_params(plan->nargs, plan->argtypes,
          Values, Nulls);

 portal = SPI_cursor_open_internal(name, plan, paramLI, read_only);


 if (paramLI)
  pfree(paramLI);

 return portal;
}
