
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_vb_data {int dummy; } ;


 scalar_t__ bzalloc (int) ;

__attribute__((used)) static inline struct gs_vb_data *gs_vbdata_create(void)
{
 return (struct gs_vb_data *)bzalloc(sizeof(struct gs_vb_data));
}
