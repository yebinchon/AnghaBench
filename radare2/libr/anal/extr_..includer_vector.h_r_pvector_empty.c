
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPVector ;


 scalar_t__ r_pvector_len (int *) ;

__attribute__((used)) static inline bool r_pvector_empty(RPVector *vec) {
 return r_pvector_len (vec) == 0;
}
