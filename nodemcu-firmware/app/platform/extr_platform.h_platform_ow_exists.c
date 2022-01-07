
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_OW ;

__attribute__((used)) static inline int platform_ow_exists( unsigned id ) { return ((id < NUM_OW) && (id > 0)); }
