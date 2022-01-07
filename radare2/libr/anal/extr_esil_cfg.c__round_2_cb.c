
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_15__ {int blocks; int atoms; } ;
struct TYPE_11__ {scalar_t__ idx; } ;
struct TYPE_10__ {scalar_t__ idx; } ;
struct TYPE_14__ {int expr; TYPE_2__ last; TYPE_1__ first; } ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef int RStrBuf ;
typedef TYPE_3__ RGraphVisitor ;
typedef TYPE_4__ RGraphNode ;
typedef TYPE_5__ RAnalEsilBB ;
typedef TYPE_6__ EsilCfgGen ;


 int _graphnode_esilbb_insert_cmp ;
 scalar_t__ r_id_storage_get (int ,scalar_t__) ;
 scalar_t__ r_id_storage_take (int ,scalar_t__) ;
 int r_rbtree_cont_delete (int ,TYPE_4__*,int ,int *) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_appendf (int *,char*,char*) ;
 int r_strbuf_free (int *) ;
 int r_strbuf_get (int *) ;
 int * r_strbuf_new (char*) ;
 int strdup (int ) ;

void _round_2_cb (RGraphNode *n, RGraphVisitor *vi) {
 RAnalEsilBB *bb = (RAnalEsilBB *)n->data;
 EsilCfgGen *gen = (EsilCfgGen *)vi->data;
 RStrBuf *buf = r_strbuf_new ((char *)r_id_storage_get (gen->atoms, bb->first.idx));
 r_strbuf_append (buf, ",");
 ut32 id;
 for (id = bb->first.idx + 1; id <= bb->last.idx; id++) {

  r_strbuf_appendf (buf, "%s,", (char *)r_id_storage_take (gen->atoms, id));
 }
 bb->expr = strdup (r_strbuf_get (buf));
 r_strbuf_free (buf);
 r_rbtree_cont_delete (gen->blocks, n, _graphnode_esilbb_insert_cmp, ((void*)0));
}
