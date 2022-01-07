
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsstr_t ;
typedef int WCHAR ;
struct TYPE_4__ {unsigned int buf; } ;
struct TYPE_3__ {unsigned int buf; } ;





 TYPE_2__* jsstr_as_heap (int *) ;
 TYPE_1__* jsstr_as_inline (int *) ;
 int jsstr_as_rope (int *) ;
 int jsstr_rope_extract (int ,unsigned int,unsigned int,int *) ;
 int jsstr_tag (int *) ;
 int memcpy (int *,unsigned int,unsigned int) ;

void jsstr_extract(jsstr_t *str, unsigned off, unsigned len, WCHAR *buf)
{
    switch(jsstr_tag(str)) {
    case 129:
        memcpy(buf, jsstr_as_inline(str)->buf+off, len*sizeof(WCHAR));
        return;
    case 130:
        memcpy(buf, jsstr_as_heap(str)->buf+off, len*sizeof(WCHAR));
        return;
    case 128:
        jsstr_rope_extract(jsstr_as_rope(str), off, len, buf);
        return;
    }
}
