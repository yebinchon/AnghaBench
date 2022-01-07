
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int pyb_thread_cur ;

__attribute__((used)) static inline uint32_t pyb_thread_get_id(void) {
    return (uint32_t)pyb_thread_cur;
}
