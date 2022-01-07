
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buf; } ;
struct TYPE_5__ {scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; int hashso_buc_populated; int hashso_buc_split; TYPE_1__ currPos; } ;
typedef int Relation ;
typedef TYPE_2__* HashScanOpaque ;


 scalar_t__ BufferIsValid (scalar_t__) ;
 void* InvalidBuffer ;
 int _hash_dropbuf (int ,scalar_t__) ;

void
_hash_dropscanbuf(Relation rel, HashScanOpaque so)
{

 if (BufferIsValid(so->hashso_bucket_buf) &&
  so->hashso_bucket_buf != so->currPos.buf)
  _hash_dropbuf(rel, so->hashso_bucket_buf);
 so->hashso_bucket_buf = InvalidBuffer;


 if (BufferIsValid(so->hashso_split_bucket_buf) &&
  so->hashso_split_bucket_buf != so->currPos.buf)
  _hash_dropbuf(rel, so->hashso_split_bucket_buf);
 so->hashso_split_bucket_buf = InvalidBuffer;


 if (BufferIsValid(so->currPos.buf))
  _hash_dropbuf(rel, so->currPos.buf);
 so->currPos.buf = InvalidBuffer;


 so->hashso_buc_populated = 0;
 so->hashso_buc_split = 0;
}
