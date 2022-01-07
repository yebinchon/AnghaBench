
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EHWPOISON ;
 int FOLL_HWPOISON ;
 int FOLL_WRITE ;
 int get_user_pages (unsigned long,int,int,int *,int *) ;

__attribute__((used)) static inline int check_user_page_hwpoison(unsigned long addr)
{
 int rc, flags = FOLL_HWPOISON | FOLL_WRITE;

 rc = get_user_pages(addr, 1, flags, ((void*)0), ((void*)0));
 return rc == -EHWPOISON;
}
