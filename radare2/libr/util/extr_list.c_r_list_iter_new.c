
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RListIter ;


 int * calloc (int,int) ;

inline RListIter *r_list_iter_new() {
 return calloc (1, sizeof (RListIter));
}
