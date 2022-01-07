
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int dummy; } ;


 int bstr0 (scalar_t__) ;
 scalar_t__ mp_chmap_equals_reordered (struct mp_chmap*,struct mp_chmap*) ;
 scalar_t__ mp_chmap_from_str (struct mp_chmap*,int ) ;
 int mp_chmap_remove_na (struct mp_chmap*) ;
 char* mp_chmap_to_str_buf (char*,size_t,struct mp_chmap*) ;
 scalar_t__** std_layout_names ;

char *mp_chmap_to_str_hr_buf(char *buf, size_t buf_size, const struct mp_chmap *src)
{
    struct mp_chmap map = *src;
    mp_chmap_remove_na(&map);
    for (int n = 0; std_layout_names[n][0]; n++) {
        struct mp_chmap s;
        if (mp_chmap_from_str(&s, bstr0(std_layout_names[n][0])) &&
            mp_chmap_equals_reordered(&s, &map))
        {
            map = s;
            break;
        }
    }
    return mp_chmap_to_str_buf(buf, buf_size, &map);
}
