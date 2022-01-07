
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECLARE_IS_ENDIAN ;
 scalar_t__ IS_LITTLE_ENDIAN ;
 int memcpy (unsigned char*,void const*,size_t) ;
 int swap_copy (unsigned char*,void const*,size_t) ;

__attribute__((used)) static void le_copy(unsigned char *out, const void *in, size_t len)
{
    DECLARE_IS_ENDIAN;

    if (IS_LITTLE_ENDIAN)
        memcpy(out, in, len);
    else
        swap_copy(out, in, len);
}
