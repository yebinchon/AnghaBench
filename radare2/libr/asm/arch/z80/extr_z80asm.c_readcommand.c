
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indx (char const**,int ,int ,int *) ;
 int mnemonics ;

__attribute__((used)) static int readcommand(const char **p) {
 return indx (p, mnemonics, 0, ((void*)0));
}
