
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PINC ;

__attribute__((used)) static inline bool KEY_STATE(void) { return (PINC & (1<<6)); }
