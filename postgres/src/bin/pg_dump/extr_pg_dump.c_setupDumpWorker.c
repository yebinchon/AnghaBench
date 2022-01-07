
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int encoding; } ;
typedef TYPE_1__ Archive ;


 int pg_encoding_to_char (int ) ;
 int setup_connection (TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static void
setupDumpWorker(Archive *AH)
{






 setup_connection(AH,
      pg_encoding_to_char(AH->encoding),
      ((void*)0),
      ((void*)0));
}
