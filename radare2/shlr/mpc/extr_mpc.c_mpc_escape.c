
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int free ;
 int * mpc_and (int,int ,int ,int ,int ) ;
 int mpc_any () ;
 int mpc_char (char) ;
 int mpcf_strfold ;

mpc_parser_t *mpc_escape(void) { return mpc_and(2, mpcf_strfold, mpc_char('\\'), mpc_any(), free); }
