
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_CAN ;

__attribute__((used)) static inline int platform_can_exists( unsigned id ) { return NUM_CAN && (id < NUM_CAN); }
