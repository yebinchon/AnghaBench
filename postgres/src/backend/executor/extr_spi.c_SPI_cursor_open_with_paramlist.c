
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SPIPlanPtr ;
typedef int Portal ;
typedef int ParamListInfo ;


 int SPI_cursor_open_internal (char const*,int ,int ,int) ;

Portal
SPI_cursor_open_with_paramlist(const char *name, SPIPlanPtr plan,
          ParamListInfo params, bool read_only)
{
 return SPI_cursor_open_internal(name, plan, params, read_only);
}
