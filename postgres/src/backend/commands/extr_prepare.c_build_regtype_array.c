
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int REGTYPEOID ;
 int * construct_array (int *,int,int ,int,int,char) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static Datum
build_regtype_array(Oid *param_types, int num_params)
{
 Datum *tmp_ary;
 ArrayType *result;
 int i;

 tmp_ary = (Datum *) palloc(num_params * sizeof(Datum));

 for (i = 0; i < num_params; i++)
  tmp_ary[i] = ObjectIdGetDatum(param_types[i]);


 result = construct_array(tmp_ary, num_params, REGTYPEOID, 4, 1, 'i');
 return PointerGetDatum(result);
}
