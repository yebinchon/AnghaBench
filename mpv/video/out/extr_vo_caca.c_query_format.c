
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;


 int IMGFMT_BGR24 ;

__attribute__((used)) static int query_format(struct vo *vo, int format)
{
    return format == IMGFMT_BGR24;
}
