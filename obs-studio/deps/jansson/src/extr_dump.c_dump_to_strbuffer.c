
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuffer_t ;


 int strbuffer_append_bytes (int *,char const*,size_t) ;

__attribute__((used)) static int dump_to_strbuffer(const char *buffer, size_t size, void *data)
{
    return strbuffer_append_bytes((strbuffer_t *)data, buffer, size);
}
