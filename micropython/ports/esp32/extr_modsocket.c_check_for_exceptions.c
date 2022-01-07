
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_handle_pending () ;

__attribute__((used)) static inline void check_for_exceptions(void) {
    mp_handle_pending();
}
