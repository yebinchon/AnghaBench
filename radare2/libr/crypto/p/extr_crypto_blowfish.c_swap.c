
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static void swap(ut32 *left, ut32 *right) {
 ut32 temp;

 temp = *right;
 *right = *left;
 *left = temp;
}
