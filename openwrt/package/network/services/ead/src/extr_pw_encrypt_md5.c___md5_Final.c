
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MD5Context {int state; } ;


 int __md5_Encode (unsigned char*,int ,int) ;
 int __md5_Pad (struct MD5Context*) ;
 int memset (struct MD5Context*,int ,int) ;

__attribute__((used)) static void __md5_Final(unsigned char digest[16], struct MD5Context *context)
{

 __md5_Pad(context);


 __md5_Encode(digest, context->state, 16);


 memset(context, 0, sizeof(*context));
}
