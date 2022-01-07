
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef unsigned int DWORD ;



__attribute__((used)) static inline DWORD context_generate_rt_mask(GLenum buffer)
{

    return buffer ? (1u << 31) | buffer : 0;
}
