
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_sceneitem_crop {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;



__attribute__((used)) static inline bool crop_enabled(const struct obs_sceneitem_crop *crop)
{
 return crop->left || crop->right || crop->top || crop->bottom;
}
