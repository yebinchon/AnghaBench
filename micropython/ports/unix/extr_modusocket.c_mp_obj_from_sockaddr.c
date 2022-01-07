
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int mp_obj_t ;
typedef int byte ;


 int mp_obj_new_bytes (int const*,int ) ;

__attribute__((used)) static inline mp_obj_t mp_obj_from_sockaddr(const struct sockaddr *addr, socklen_t len) {
    return mp_obj_new_bytes((const byte *)addr, len);
}
