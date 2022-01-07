
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wYear; scalar_t__ wMonth; scalar_t__ wDay; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL MONTHCAL_IsDateEqual(const SYSTEMTIME *first, const SYSTEMTIME *second)
{
  return (first->wYear == second->wYear) && (first->wMonth == second->wMonth) &&
         (first->wDay == second->wDay);
}
