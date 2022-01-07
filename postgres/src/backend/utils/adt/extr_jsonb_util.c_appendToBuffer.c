
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int copyToBuffer (int ,int,char const*,int) ;
 int reserveFromBuffer (int ,int) ;

__attribute__((used)) static void
appendToBuffer(StringInfo buffer, const char *data, int len)
{
 int offset;

 offset = reserveFromBuffer(buffer, len);
 copyToBuffer(buffer, offset, data, len);
}
