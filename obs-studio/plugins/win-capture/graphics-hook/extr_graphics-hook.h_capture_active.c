
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int active ;

__attribute__((used)) static inline bool capture_active(void)
{
 return active;
}
