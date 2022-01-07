
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct aes_container {char* src_buf; char* dst_buf; } ;


 struct page* sg_virt (struct scatterlist*) ;

__attribute__((used)) static void lq_sg_init(struct aes_container *aes_con,struct scatterlist *src,
                       struct scatterlist *dst)
{

    struct page *dst_page, *src_page;

    src_page = sg_virt(src);
    aes_con->src_buf = (char *) src_page;

    dst_page = sg_virt(dst);
    aes_con->dst_buf = (char *) dst_page;

}
