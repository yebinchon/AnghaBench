
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline bool chroma_is(const char *chroma, const char *val)
{
 return *(uint32_t *)chroma == *(uint32_t *)val;
}
