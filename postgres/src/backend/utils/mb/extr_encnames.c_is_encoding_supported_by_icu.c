
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** pg_enc2icu_tbl ;

bool
is_encoding_supported_by_icu(int encoding)
{
 return (pg_enc2icu_tbl[encoding] != ((void*)0));
}
