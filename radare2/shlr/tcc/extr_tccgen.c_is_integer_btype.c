
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT_INT16 ;
 int VT_INT32 ;
 int VT_INT64 ;
 int VT_INT8 ;

__attribute__((used)) static inline int is_integer_btype(int bt) {
 return bt == VT_INT8 || bt == VT_INT16 || bt == VT_INT32 || bt == VT_INT64;
}
