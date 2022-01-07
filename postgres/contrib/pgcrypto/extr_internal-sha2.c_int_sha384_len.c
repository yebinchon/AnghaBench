
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_MD ;


 int PG_SHA384_DIGEST_LENGTH ;

__attribute__((used)) static unsigned
int_sha384_len(PX_MD *h)
{
 return PG_SHA384_DIGEST_LENGTH;
}
