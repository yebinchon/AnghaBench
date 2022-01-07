
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar7240sw {scalar_t__ ver; } ;


 scalar_t__ AR7240_MASK_CTRL_VERSION_AR934X ;

__attribute__((used)) static inline int sw_is_ar934x(struct ar7240sw *as)
{
 return as->ver == AR7240_MASK_CTRL_VERSION_AR934X;
}
