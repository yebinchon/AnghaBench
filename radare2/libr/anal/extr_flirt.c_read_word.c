
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int RBuffer ;


 int read_short (int *) ;

__attribute__((used)) static ut32 read_word(RBuffer *b) {
 ut32 r = (read_short (b) << 16);
 r += read_short (b);
 return r;
}
