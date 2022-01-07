
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_matrix {int dummy; } ;
typedef scalar_t__ D3DRMMATRIX4D ;



__attribute__((used)) static inline struct d3drm_matrix *d3drm_matrix(D3DRMMATRIX4D m)
{
    return (struct d3drm_matrix *)m;
}
