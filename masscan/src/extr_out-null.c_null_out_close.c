
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {int dummy; } ;
typedef struct Output FILE ;


 int UNUSEDPARM (struct Output*) ;

__attribute__((used)) static void
null_out_close(struct Output *out, FILE *fp)
{
    UNUSEDPARM(out);
    UNUSEDPARM(fp);
}
