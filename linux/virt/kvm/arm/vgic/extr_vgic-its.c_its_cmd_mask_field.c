
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT_ULL (int) ;
 int le64_to_cpu (int) ;

__attribute__((used)) static u64 its_cmd_mask_field(u64 *its_cmd, int word, int shift, int size)
{
 return (le64_to_cpu(its_cmd[word]) >> shift) & (BIT_ULL(size) - 1);
}
