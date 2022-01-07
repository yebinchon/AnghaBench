
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int st_nlink; int st_size; void* st_ctime; void* st_mtime; void* st_atime; int st_ino; int st_dev; scalar_t__ st_gid; scalar_t__ st_uid; } ;
typedef TYPE_3__ zend_stat_t ;
struct TYPE_10__ {TYPE_3__ finfo; TYPE_2__* r; } ;
typedef TYPE_4__ php_struct ;
struct TYPE_7__ {int nlink; int size; int ctime; int mtime; int atime; int inode; int device; scalar_t__ group; scalar_t__ user; } ;
struct TYPE_8__ {TYPE_1__ finfo; } ;


 TYPE_4__* SG (int ) ;
 void* apr_time_sec (int ) ;
 int server_context ;

__attribute__((used)) static zend_stat_t*
php_apache_sapi_get_stat(void)
{
 php_struct *ctx = SG(server_context);





 ctx->finfo.st_uid = ctx->r->finfo.user;
 ctx->finfo.st_gid = ctx->r->finfo.group;

 ctx->finfo.st_dev = ctx->r->finfo.device;
 ctx->finfo.st_ino = ctx->r->finfo.inode;
 ctx->finfo.st_atime = apr_time_sec(ctx->r->finfo.atime);
 ctx->finfo.st_mtime = apr_time_sec(ctx->r->finfo.mtime);
 ctx->finfo.st_ctime = apr_time_sec(ctx->r->finfo.ctime);
 ctx->finfo.st_size = ctx->r->finfo.size;
 ctx->finfo.st_nlink = ctx->r->finfo.nlink;

 return &ctx->finfo;
}
