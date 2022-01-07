
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
typedef int RBuffer ;


 int read_byte (int *) ;

__attribute__((used)) static ut16 read_short(RBuffer *b) {
 ut16 r = (read_byte (b) << 8);
 r += read_byte (b);
 return r;
}
