
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_const_bo_address {int dummy; } ;
struct wined3d_bo_address {int dummy; } ;



__attribute__((used)) static inline struct wined3d_const_bo_address *wined3d_const_bo_address(struct wined3d_bo_address *data)
{
    return (struct wined3d_const_bo_address *)data;
}
