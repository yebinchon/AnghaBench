
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int Timestamp ;


 int timestamp2timestamptz_opt_overflow (int ,int *) ;

__attribute__((used)) static TimestampTz
timestamp2timestamptz(Timestamp timestamp)
{
 return timestamp2timestamptz_opt_overflow(timestamp, ((void*)0));
}
