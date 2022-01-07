
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int type; int len; int elements; struct TYPE_3__** element; int str; int integer; } ;
typedef TYPE_1__ clusterReply ;






 int add_next_index_bool (int *,int) ;
 int add_next_index_long (int *,int ) ;
 int add_next_index_null (int *) ;
 int add_next_index_stringl (int *,int ,int) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;

__attribute__((used)) static void cluster_mbulk_variant_resp(clusterReply *r, zval *z_ret)
{
    zval z_sub_ele;
    int i;

    switch(r->type) {
        case 130:
            add_next_index_long(z_ret, r->integer);
            break;
        case 129:
            if (r->str) {
                add_next_index_stringl(z_ret, r->str, r->len);
            } else {
                add_next_index_bool(z_ret, 1);
            }
            break;
        case 131:
            if (r->len > -1) {
                add_next_index_stringl(z_ret, r->str, r->len);
            } else {
                add_next_index_null(z_ret);
            }
            break;
        case 128:
            array_init(&z_sub_ele);
            for (i = 0; i < r->elements; i++) {
                cluster_mbulk_variant_resp(r->element[i], &z_sub_ele);
            }
            add_next_index_zval(z_ret, &z_sub_ele);
            break;
        default:
            add_next_index_bool(z_ret, 0);
            break;
    }
}
