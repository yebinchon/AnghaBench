
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;


 int minMaxValueFinalize (int *,int ) ;

__attribute__((used)) static void minMaxFinalize(sqlite3_context *context){
  minMaxValueFinalize(context, 0);
}
