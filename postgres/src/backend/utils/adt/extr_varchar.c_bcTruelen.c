
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BpChar ;


 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int bpchartruelen (int ,int ) ;

__attribute__((used)) static inline int
bcTruelen(BpChar *arg)
{
 return bpchartruelen(VARDATA_ANY(arg), VARSIZE_ANY_EXHDR(arg));
}
