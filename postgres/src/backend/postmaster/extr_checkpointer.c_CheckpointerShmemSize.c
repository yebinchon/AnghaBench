
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int CheckpointerRequest ;


 int CheckpointerShmemStruct ;
 int NBuffers ;
 int add_size (int ,int ) ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;
 int requests ;

Size
CheckpointerShmemSize(void)
{
 Size size;





 size = offsetof(CheckpointerShmemStruct, requests);
 size = add_size(size, mul_size(NBuffers, sizeof(CheckpointerRequest)));

 return size;
}
