
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int dummy; } ;


 int M_FATAL ;
 int buf_write (struct buffer*,int *,int) ;
 int msg (int ,char*) ;
 int rand_bytes (int *,int) ;

__attribute__((used)) static bool
random_bytes_to_buf(struct buffer *buf,
                    uint8_t *out,
                    int outlen)
{
    if (!rand_bytes(out, outlen))
    {
        msg(M_FATAL, "ERROR: Random number generator cannot obtain entropy for key generation [SSL]");
    }
    if (!buf_write(buf, out, outlen))
    {
        return 0;
    }
    return 1;
}
