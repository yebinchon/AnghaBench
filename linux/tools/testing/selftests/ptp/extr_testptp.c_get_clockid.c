
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int clockid_t ;


 unsigned int CLOCKFD ;

__attribute__((used)) static clockid_t get_clockid(int fd)
{

 return (((unsigned int) ~fd) << 3) | 3;
}
