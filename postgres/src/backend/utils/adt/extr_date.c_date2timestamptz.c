
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int DateADT ;


 int date2timestamptz_opt_overflow (int ,int *) ;

__attribute__((used)) static TimestampTz
date2timestamptz(DateADT dateVal)
{
 return date2timestamptz_opt_overflow(dateVal, ((void*)0));
}
