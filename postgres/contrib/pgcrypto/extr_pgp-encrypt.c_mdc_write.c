
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PushFilter ;
typedef int PX_MD ;


 int pushf_write (int *,int const*,int) ;
 int px_md_update (int *,int const*,int) ;

__attribute__((used)) static int
mdc_write(PushFilter *dst, void *priv, const uint8 *data, int len)
{
 PX_MD *md = priv;

 px_md_update(md, data, len);
 return pushf_write(dst, data, len);
}
