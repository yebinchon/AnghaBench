
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pfwords ;


 int freez (int *) ;

__attribute__((used)) static inline void pfwords_free(pfwords *fw) {


    freez(fw);
}
