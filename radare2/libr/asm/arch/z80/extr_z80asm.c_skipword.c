
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rd_expr (char const**,char,int*,int ,int ) ;
 int sp ;

__attribute__((used)) static void skipword(const char **pos, char delimiter) {



 int valid;
 rd_expr (pos, delimiter, &valid, sp, 0);
}
