
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ value_len; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct TYPE_10__ {int fd; TYPE_3__ tmpkv; int dir; int ndump; int ht; int ns; int path; int name; scalar_t__ refs; scalar_t__ lock; int db; } ;
typedef TYPE_2__ Sdb ;


 int cdb_free (int *) ;
 int close (int) ;
 int free (int ) ;
 int ls_free (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int sdb_hook_free (TYPE_2__*) ;
 int sdb_ht_free (int ) ;
 int sdb_journal_close (TYPE_2__*) ;
 int sdb_lock_file (int ) ;
 int sdb_ns_free (TYPE_2__*) ;
 int sdb_unlock (int ) ;
 int sdbkv_value (TYPE_3__*) ;

__attribute__((used)) static void sdb_fini(Sdb* s, int donull) {
 if (!s) {
  return;
 }
 sdb_hook_free (s);
 cdb_free (&s->db);
 if (s->lock) {
  sdb_unlock (sdb_lock_file (s->dir));
 }
 sdb_ns_free (s);
 s->refs = 0;
 free (s->name);
 free (s->path);
 ls_free (s->ns);
 sdb_ht_free (s->ht);
 sdb_journal_close (s);
 if (s->fd != -1) {
  close (s->fd);
  s->fd = -1;
 }
 free (s->ndump);
 free (s->dir);
 free (sdbkv_value (&s->tmpkv));
 s->tmpkv.base.value_len = 0;
 if (donull) {
  memset (s, 0, sizeof (Sdb));
 }
}
