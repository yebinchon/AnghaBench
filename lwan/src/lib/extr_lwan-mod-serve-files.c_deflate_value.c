
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_value {unsigned long len; int * value; } ;
typedef int Bytef ;


 scalar_t__ UNLIKELY (int) ;
 scalar_t__ Z_OK ;
 scalar_t__ compress (int *,unsigned long*,int *,unsigned long) ;
 unsigned long compressBound (unsigned long) ;
 int free (int *) ;
 scalar_t__ is_compression_worthy (unsigned long,unsigned long) ;
 int * malloc (unsigned long const) ;
 void realloc_if_needed (struct lwan_value*,unsigned long const) ;

__attribute__((used)) static void deflate_value(const struct lwan_value *uncompressed,
                          struct lwan_value *compressed)
{
    const unsigned long bound = compressBound(uncompressed->len);

    compressed->len = bound;

    if (UNLIKELY(!(compressed->value = malloc(bound))))
        goto error_zero_out;

    if (UNLIKELY(compress((Bytef *)compressed->value, &compressed->len,
                          (Bytef *)uncompressed->value,
                          uncompressed->len) != Z_OK))
        goto error_free_compressed;

    if (is_compression_worthy(compressed->len, uncompressed->len))
        return realloc_if_needed(compressed, bound);

error_free_compressed:
    free(compressed->value);
    compressed->value = ((void*)0);
error_zero_out:
    compressed->len = 0;
}
