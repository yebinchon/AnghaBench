
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_byte_array {int size; int data; } ;
struct TYPE_2__ {int num; char** keys; void const* values; } ;
typedef TYPE_1__ mpv_node_list ;
typedef int mpv_format ;
typedef int int64_t ;
 int abort () ;
 int equal_mpv_node (void const*,void const*) ;
 int memcmp (int ,int ,int ) ;
 int strcmp (char*,char*) ;

bool equal_mpv_value(const void *a, const void *b, mpv_format format)
{
    switch (format) {
    case 130:
        return 1;
    case 128:
    case 129:
        return strcmp(*(char **)a, *(char **)b) == 0;
    case 135:
        return *(int *)a == *(int *)b;
    case 134:
        return *(int64_t *)a == *(int64_t *)b;
    case 136:
        return *(double *)a == *(double *)b;
    case 133:
        return equal_mpv_node(a, b);
    case 137: {
        const struct mpv_byte_array *a_r = a, *b_r = b;
        if (a_r->size != b_r->size)
            return 0;
        return memcmp(a_r->data, b_r->data, a_r->size) == 0;
    }
    case 132:
    case 131:
    {
        mpv_node_list *l_a = *(mpv_node_list **)a, *l_b = *(mpv_node_list **)b;
        if (l_a->num != l_b->num)
            return 0;
        for (int n = 0; n < l_a->num; n++) {
            if (format == 131) {
                if (strcmp(l_a->keys[n], l_b->keys[n]) != 0)
                    return 0;
            }
            if (!equal_mpv_node(&l_a->values[n], &l_b->values[n]))
                return 0;
        }
        return 1;
    }
    }
    abort();
}
