
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int r_bin_p9_get_arch (int *,int *,int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 return r_bin_p9_get_arch (buf, ((void*)0), ((void*)0));
}
