
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint16_t ;



__attribute__((used)) static uint16_t get_ip_csum(const uint16_t *start, int num_words,
       unsigned long sum)
{
 int i;

 for (i = 0; i < num_words; i++)
  sum += start[i];

 while (sum >> 16)
  sum = (sum & 0xFFFF) + (sum >> 16);

 return ~sum;
}
