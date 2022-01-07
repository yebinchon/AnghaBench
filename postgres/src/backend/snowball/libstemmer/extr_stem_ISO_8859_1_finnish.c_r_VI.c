
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; char* p; } ;


 int g_V2 ;
 scalar_t__ in_grouping_b (struct SN_env*,int ,int,int,int ) ;

__attribute__((used)) static int r_VI(struct SN_env * z) {
    if (z->c <= z->lb || z->p[z->c - 1] != 'i') return 0;
    z->c--;
    if (in_grouping_b(z, g_V2, 97, 246, 0)) return 0;
    return 1;
}
