
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef scalar_t__ off_t ;
struct TYPE_22__ {int len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_17__ {int key; } ;
struct TYPE_20__ {int len; int * data; } ;
struct TYPE_23__ {TYPE_11__ node; TYPE_3__ str; } ;
typedef TYPE_6__ ngx_str_node_t ;
typedef int ngx_int_t ;
struct TYPE_24__ {TYPE_4__* cycle; int temp_pool; TYPE_2__* conf_file; } ;
typedef TYPE_7__ ngx_conf_t ;
struct TYPE_25__ {TYPE_3__ name; int * buffer; } ;
typedef TYPE_8__ ngx_conf_dump_t ;
typedef int ngx_buf_t ;
struct TYPE_21__ {int config_dump_rbtree; int pool; int config_dump; } ;
struct TYPE_18__ {int info; } ;
struct TYPE_19__ {int * dump; TYPE_1__ file; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_8__* ngx_array_push (int *) ;
 int ngx_crc32_long (int ,int ) ;
 int * ngx_create_temp_buf (int ,size_t) ;
 scalar_t__ ngx_file_size (int *) ;
 TYPE_6__* ngx_palloc (int ,int) ;
 int * ngx_pstrdup (int ,TYPE_5__*) ;
 int ngx_rbtree_insert (int *,TYPE_11__*) ;
 TYPE_6__* ngx_str_rbtree_lookup (int *,TYPE_5__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_conf_add_dump(ngx_conf_t *cf, ngx_str_t *filename)
{
    off_t size;
    u_char *p;
    uint32_t hash;
    ngx_buf_t *buf;
    ngx_str_node_t *sn;
    ngx_conf_dump_t *cd;

    hash = ngx_crc32_long(filename->data, filename->len);

    sn = ngx_str_rbtree_lookup(&cf->cycle->config_dump_rbtree, filename, hash);

    if (sn) {
        cf->conf_file->dump = ((void*)0);
        return NGX_OK;
    }

    p = ngx_pstrdup(cf->cycle->pool, filename);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    cd = ngx_array_push(&cf->cycle->config_dump);
    if (cd == ((void*)0)) {
        return NGX_ERROR;
    }

    size = ngx_file_size(&cf->conf_file->file.info);

    buf = ngx_create_temp_buf(cf->cycle->pool, (size_t) size);
    if (buf == ((void*)0)) {
        return NGX_ERROR;
    }

    cd->name.data = p;
    cd->name.len = filename->len;
    cd->buffer = buf;

    cf->conf_file->dump = buf;

    sn = ngx_palloc(cf->temp_pool, sizeof(ngx_str_node_t));
    if (sn == ((void*)0)) {
        return NGX_ERROR;
    }

    sn->node.key = hash;
    sn->str = cd->name;

    ngx_rbtree_insert(&cf->cycle->config_dump_rbtree, &sn->node);

    return NGX_OK;
}
