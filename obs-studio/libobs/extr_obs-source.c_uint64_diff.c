
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static inline uint64_t uint64_diff(uint64_t ts1, uint64_t ts2)
{
 return (ts1 < ts2) ? (ts2 - ts1) : (ts1 - ts2);
}
