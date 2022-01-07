
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pcre_uchar ;


 scalar_t__ OP_NOTSTAR ;
 scalar_t__ OP_NOTSTARI ;
 scalar_t__ OP_STAR ;
 scalar_t__ OP_STARI ;
 scalar_t__ OP_TYPEPOSUPTO ;
 scalar_t__ OP_TYPESTAR ;

__attribute__((used)) static pcre_uchar
get_repeat_base(pcre_uchar c)
{
return (c > OP_TYPEPOSUPTO)? c :
       (c >= OP_TYPESTAR)? OP_TYPESTAR :
       (c >= OP_NOTSTARI)? OP_NOTSTARI :
       (c >= OP_NOTSTAR)? OP_NOTSTAR :
       (c >= OP_STARI)? OP_STARI :
                             OP_STAR;
}
