
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef int PGresult ;


 long sqlda_common_total_size (int const*,int,int,long) ;
 long sqlda_native_empty_size (int const*) ;

__attribute__((used)) static long
sqlda_native_total_size(const PGresult *res, int row, enum COMPAT_MODE compat)
{
 long offset;

 offset = sqlda_native_empty_size(res);

 if (row < 0)
  return offset;

 offset = sqlda_common_total_size(res, row, compat, offset);
 return offset;
}
