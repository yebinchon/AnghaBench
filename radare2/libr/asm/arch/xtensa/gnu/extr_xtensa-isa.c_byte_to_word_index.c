
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_insnbuf_word ;



__attribute__((used)) static inline int
byte_to_word_index (int byte_index)
{
  return byte_index / sizeof (xtensa_insnbuf_word);
}
