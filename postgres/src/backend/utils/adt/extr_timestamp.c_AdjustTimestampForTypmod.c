
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Timestamp ;


 int AdjustTimestampForTypmodError (int *,int ,int *) ;

void
AdjustTimestampForTypmod(Timestamp *time, int32 typmod)
{
 (void) AdjustTimestampForTypmodError(time, typmod, ((void*)0));
}
