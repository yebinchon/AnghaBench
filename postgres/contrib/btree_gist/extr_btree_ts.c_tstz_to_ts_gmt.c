
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int Timestamp ;



__attribute__((used)) static inline Timestamp
tstz_to_ts_gmt(TimestampTz ts)
{

 return (Timestamp) ts;
}
