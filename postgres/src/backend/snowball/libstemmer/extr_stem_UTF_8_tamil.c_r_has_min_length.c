
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int p; } ;


 int len_utf8 (int ) ;

__attribute__((used)) static int r_has_min_length(struct SN_env * z) {
    if (!(len_utf8(z->p) > 4)) return 0;
    return 1;
}
