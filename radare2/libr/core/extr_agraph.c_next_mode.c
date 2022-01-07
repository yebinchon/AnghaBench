
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_AGRAPH_MODE_MAX ;

__attribute__((used)) static int next_mode(int mode) {
 return (mode + 1) % R_AGRAPH_MODE_MAX;
}
