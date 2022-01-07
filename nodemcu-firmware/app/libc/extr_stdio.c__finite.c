
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtype ;



__attribute__((used)) static int _finite(rtype d)
{

    struct IEEEdp {
    unsigned manl:32;
    unsigned manh:20;
    unsigned exp:11;
    unsigned sign:1;
    } *ip;
    ip = (struct IEEEdp *)&d;
    return (ip->exp != 0x7ff);
}
