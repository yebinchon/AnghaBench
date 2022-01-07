
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CType ;


 int VT_LOCAL ;
 int vpushi (int ) ;
 int vpushs (int) ;
 int vseti (int ,unsigned long) ;

__attribute__((used)) static void init_putz(CType *t, unsigned long c, int size) {
 vseti (VT_LOCAL, c);
 vpushi (0);
 vpushs (size);
}
