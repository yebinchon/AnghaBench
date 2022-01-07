
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;


 int ENDOF (int ) ;
 int backw ;
 int lexnest (struct vars*,int ,int ) ;

__attribute__((used)) static void
lexword(struct vars *v)
{
 lexnest(v, backw, ENDOF(backw));
}
