
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcheck () ;

__attribute__((used)) static inline bool tcheck_transactional(void)
{
 return tcheck() & 6;
}
