
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long pg_lrand48 () ;

long
random()
{
 return pg_lrand48();
}
