
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ socket_descriptor_t ;


 scalar_t__ const SOCKET_UNDEFINED ;

__attribute__((used)) static inline int
socket_defined(const socket_descriptor_t sd)
{
    return sd != SOCKET_UNDEFINED;
}
