
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MP_ARRAY_SIZE (int ) ;
 int PRIO2ID (int) ;
 int emu_tasks ;
 int printf (char*,int) ;

__attribute__((used)) static inline int prio2id(uint8_t prio) {
    int id = PRIO2ID(prio);
    if (id < 0 || id >= MP_ARRAY_SIZE(emu_tasks)) {
        printf("task prio out of range: %d\n", prio);
        while (1);
    }
    return id;
}
