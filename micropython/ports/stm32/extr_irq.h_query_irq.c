
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;


 int __get_PRIMASK () ;

__attribute__((used)) static inline mp_uint_t query_irq(void) {
    return __get_PRIMASK();
}
