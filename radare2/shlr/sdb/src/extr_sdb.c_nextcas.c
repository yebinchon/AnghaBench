
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static inline int nextcas(void) {
 static ut32 cas = 1;
 if (!cas) {
  cas++;
 }
 return cas++;
}
