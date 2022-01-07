
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MD5Context {int* count; } ;
typedef int PADDING ;


 int __md5_Encode (unsigned char*,int*,int) ;
 int __md5_Update (struct MD5Context*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void __md5_Pad(struct MD5Context *context)
{
 unsigned char bits[8];
 unsigned int idx, padLen;
 unsigned char PADDING[64];

 memset(PADDING, 0, sizeof(PADDING));
 PADDING[0] = 0x80;


 __md5_Encode(bits, context->count, 8);


 idx = (context->count[0] >> 3) & 0x3f;
 padLen = (idx < 56) ? (56 - idx) : (120 - idx);
 __md5_Update(context, PADDING, padLen);


 __md5_Update(context, bits, 8);
}
