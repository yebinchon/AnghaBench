
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_AGRAPH_MODE_MAX ;

__attribute__((used)) static int prev_mode(int mode) {
 return (mode + R_AGRAPH_MODE_MAX - 1) % R_AGRAPH_MODE_MAX;
}
