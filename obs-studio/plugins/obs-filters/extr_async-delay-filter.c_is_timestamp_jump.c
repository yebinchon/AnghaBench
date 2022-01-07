
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ SEC_TO_NSEC ;

__attribute__((used)) static inline bool is_timestamp_jump(uint64_t ts, uint64_t prev_ts)
{
 return ts < prev_ts || (ts - prev_ts) > SEC_TO_NSEC;
}
