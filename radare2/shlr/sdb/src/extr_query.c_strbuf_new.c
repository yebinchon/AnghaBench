
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrBuf ;


 int * calloc (int,int) ;

__attribute__((used)) static StrBuf* strbuf_new() {
 return calloc (sizeof (StrBuf), 1);
}
