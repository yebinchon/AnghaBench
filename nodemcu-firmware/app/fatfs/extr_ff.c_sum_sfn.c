
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BYTE ;



__attribute__((used)) static BYTE sum_sfn (
 const BYTE* dir
)
{
 BYTE sum = 0;
 UINT n = 11;

 do {
  sum = (sum >> 1) + (sum << 7) + *dir++;
 } while (--n);
 return sum;
}
