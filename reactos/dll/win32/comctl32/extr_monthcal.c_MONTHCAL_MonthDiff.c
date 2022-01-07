
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wYear; int wMonth; } ;
typedef TYPE_1__ SYSTEMTIME ;



__attribute__((used)) static inline int MONTHCAL_MonthDiff(const SYSTEMTIME *left, const SYSTEMTIME *right)
{
    return (right->wYear - left->wYear)*12 + right->wMonth - left->wMonth;
}
